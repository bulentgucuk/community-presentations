﻿Describe "doomsday tests" -Tags "IntegrationTests" {
    It "Still has all the custom errors" {
        $results = Get-DbaCustomError -SqlInstance localhost\sql2016 
        $results.Id | Should -Contain 50001
    }
	
	It "Still has all the databases" {
        $results = Get-DbaDatabase -SqlInstance localhost\sql2016 
        'anotherdb', 'db1', 'dbwithsprocs' | Should -BeIn $results.Name
    }

    It "Still has all the logins" {
        $results = Get-DbaLogin -SqlInstance localhost\sql2016 
        'WORKSTATION\powershell','login1','login2','login3','login4','login5' | Should -BeIn $results.Name
    }

    It "Still has all the credentials" {
        $results = Get-DbaCredential -SqlInstance localhost\sql2016 
       'abc', 'AzureCredential', 'dbatools', 'https://dbatools.blob.core.windows.net/sql', 'PowerShell Proxy Account', 'PowerShell Service Account' | Should -BeIn $results.Name
    }

    It "Still has all the server triggers" {
        $results = Get-DbaServerTrigger -SqlInstance localhost\sql2016 
        'tr_MScdc_db_ddl_event','dbatoolsci-trigger' | Should -BeIn $results.Name
    }

    It "Still has all the linked servers" {
        $results = Get-DbaLinkedServer -SqlInstance localhost\sql2016 
        'localhost','repl_distributor','SQL2012','SQL2014','SQL2016','SQL2016A' | Should -BeIn $results.Name
    }

    It "Still has all the backup devices" {
        $results = Get-DbaBackupDevice -SqlInstance localhost\sql2016 
        'sup baw' | Should -BeIn $results.Name
    }

    It "Still has all the mail profiles" {
        $results = Get-DbaDbMailProfile -SqlInstance localhost\sql2016 
        'The DBA Team' | Should -BeIn $results.Name
    }

    It "Still has all the mail accounts" {
        $results = Get-DbaDbMailAccount -SqlInstance localhost\sql2016 
        'The DBA Team' | Should -BeIn $results.Name
    }

    It "Still has all the extended events" {
        $results = Get-DbaXeSession -SqlInstance localhost\sql2016 
        'AlwaysOn_health','Queries and Resources','Query Timeouts','Query Wait Statistics','Query Wait Statistics Detail','Stored Procedure Parameters','system_health','telemetry_xevents' | Should -BeIn $results.Name
    }

    It "Still has all the agent jobs" {
        $results = Get-DbaAgentJob -SqlInstance localhost\sql2016 
        'CommandLog Cleanup', 'DatabaseBackup - SYSTEM_DATABASES - FULL', 'DatabaseBackup - USER_DATABASES - DIFF', 'DatabaseBackup - USER_DATABASES - FULL', 'DatabaseBackup - USER_DATABASES - LOG', 'DatabaseIntegrityCheck - SYSTEM_DATABASES', 'DatabaseIntegrityCheck - USER_DATABASES', 'IndexOptimize - USER_DATABASES', 'Output File Cleanup', 'sp_delete_backuphistory', 'sp_purge_jobhistory', 'syspolicy_purge_history' | Should -BeIn $results.Name
    }

    It "Still has all the agent alerts" {
        $results = Get-DbaAgentAlert -SqlInstance localhost\sql2016 
        'adf','Error Number 823', 'Error Number 824', 'Error Number 825', 'Severity 016', 'Severity 017', 'Severity 018', 'Severity 019', 'Severity 020', 'Severity 021', 'Severity 022', 'Severity 023', 'Severity 024', 'Severity 025' | Should -BeIn $results.Name
    }

    It "Still has all the agent operators" {
        $results = Get-DbaAgentOperator -SqlInstance localhost\sql2016 
        'The DBA Team','Teste','poobutt','MSXOperator' | Should -BeIn $results.Name
    }

    It "Still has all the resource pools" {
        $results = Get-DbaRgResourcePool -SqlInstance localhost\sql2016 
        'Test Pool' | Should -BeIn $results.Name
    }

    It "Still has all the endpoints" {
        $results = Get-DbaEndpoint -SqlInstance localhost\sql2016 
        'endpoint_mirroring' | Should -BeIn $results.Name
    }

    It "Still has all the audit specs" {
        $results = Get-DbaServerAuditSpecification -SqlInstance localhost\sql2016 
        'ServerAuditSpecification-20160502-100608', 'ServerAuditSpecification-20160502-100608' | Should -BeIn $results.Name
    }

    It "Still has all the audits" {
        $results = Get-DbaServerAudit -SqlInstance localhost\sql2016 
        'Audit-20160502-100608', 'Audit-20170210-150427' | Should -BeIn $results.Name
    }
}