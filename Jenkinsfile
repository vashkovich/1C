@Library("shared-libraries")
import io.libs.SqlUtils
import io.libs.ProjectHelpers
import io.libs.Utils

def sqlUtils = new SqlUtils()
def utils = new Utils()
def projectHelpers = new ProjectHelpers()
def backupTasks = [:]
def restoreTasks = [:]
def dropDbTasks = [:]
def createDbTasks = [:]
def runHandlers1cTasks = [:]
def updateDbTasks = [:]

pipeline {
    agent any

    parameters {
        string(defaultValue: "${env.jenkinsAgent}", description: 'Нода дженкинса, на которой запускать пайплайн. По умолчанию master', name: 'jenkinsAgent')
        string(defaultValue: "${env.server1c}", description: 'Имя сервера 1с, по умолчанию localhost', name: 'server1c')
        string(defaultValue: "${env.server1cPort}", description: 'Порт рабочего сервера 1с. По умолчанию 1540. Не путать с портом агента кластера (1541)', name: 'server1cPort')
        string(defaultValue: "${env.agent1cPort}", description: 'Порт агента кластера 1с. По умолчанию 1541', name: 'agent1cPort')
        string(defaultValue: "${env.platform1c}", description: 'Версия платформы 1с, например 8.3.12.1685. По умолчанию будет использована последня версия среди установленных', name: 'platform1c')
        string(defaultValue: "${env.serverSql}", description: 'Имя сервера MS SQL. По умолчанию localhost', name: 'serverSql')
        string(defaultValue: "${env.admin1cUser}", description: 'Имя администратора с правом открытия вншних обработок (!) для базы тестирования 1с Должен быть одинаковым для всех баз', name: 'admin1cUser')
        string(defaultValue: "${env.admin1cPwd}", description: 'Пароль администратора базы тестирования 1C. Должен быть одинаковым для всех баз', name: 'admin1cPwd')
        string(defaultValue: "${env.sqlUser}", description: 'Имя администратора сервера MS SQL. Если пустой, то используется доменная  авторизация', name: 'sqlUser')
        string(defaultValue: "${env.sqlPwd}", description: 'Пароль администратора MS SQL.  Если пустой, то используется доменная  авторизация', name: 'sqlPwd')
        string(defaultValue: "${env.templatebases}", description: 'Список баз для тестирования через запятую. Например work_erp,work_upp', name: 'templatebases')
        string(defaultValue: "${env.storages1cPath}", description: 'Необязательный. Пути к хранилищам 1С для обновления копий баз тестирования через запятую. Число хранилищ (если указаны), должно соответствовать числу баз тестирования. Например D:/temp/storage1c/erp,D:/temp/storage1c/upp', name: 'storages1cPath')
        string(defaultValue: "${env.storageUser}", description: 'Необязательный. Администратор хранилищ  1C. Должен быть одинаковым для всех хранилищ', name: 'storageUser')
        string(defaultValue: "${env.storagePwd}", description: 'Необязательный. Пароль администратора хранилищ 1c', name: 'storagePwd')
    }

    options {
        timeout(time: 8, unit: 'HOURS') 
        buildDiscarder(logRotator(numToKeepStr:'10'))
    }
}
