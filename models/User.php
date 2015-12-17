<?php

namespace app\models;

use Yii;
use yii\web\IdentityInterface;
/**
 * This is the model class for table "users".
 *
 * @property integer $id
 * @property string $usersname
 * @property string $userpass
 * @property string $role
 */
class User extends \yii\db\ActiveRecord implements IdentityInterface
{
    const ROLE_ADMIN = 2;
    
    const STATUS_DELETED = 0;
    const STATUS_NOT_ACTIVE = 1;
    const STATUS_ACTIVE = 10;
    /**
     * @inheritdoc
     */

    public $username;

    public $auth_key;
    public static function tableName()
    {
        return 'users';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['usersname', 'userpass'], 'required'],
            [['usersname'], 'string', 'max' => 100],
            [['userpass', 'role'], 'string', 'max' => 250],	
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'usersname' => 'Username',
            'userpass' => 'Userpass',
            'role' => 'Role',
        ];
    }
    public static function isUserAdmin($username)
    {
        if (static::findOne(['usersname' => $username, 'role' => self::ROLE_ADMIN]))
        {
            return true;
        } else {
            return false;
        }
    }
    public function generateAuthKey()
    {
        $this->auth_key = Yii::$app->security->generateRandomString();
    }
    public static function findByUsername($username)
    {
        return static::findOne(['usersname' => $username]);
    }
    public function validatePassword($password)
    {
        return $this->userpass === $password;
    }
    public static function findIdentity($id)
    {
        return static::findOne(['id' => $id]);
    }

    public static function findIdentityByAccessToken($token, $type = null)
    {
        return static::findOne(['access_token' => $token]);
    }

    public function getId()
    {
        return $this->id;
    }

    public function getAuthKey()
    {
        return $this->auth_key;
    }

    public function validateAuthKey($authKey)
    {
        return $this->auth_key === $authKey;
    }
    
}
