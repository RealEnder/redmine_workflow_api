Redmine Workflow API
-------

Redmine API to access workflow status transitions and field permissions.

### Endpoint to get possible transitions for given role and tracker

* [GET] /workflow/transitions.xml?role_id=1&tracker_id=1 | .json

```
<?xml version="1.0" encoding="UTF-8"?>
<transitions type="array">
    <transition old_status_id="1" new_status_id="5" author="false"/>
    <transition old_status_id="2" new_status_id="5" author="false"/>
    <transition old_status_id="3" new_status_id="5" author="false"/>
    <transition old_status_id="4" new_status_id="5" author="false"/>
    <transition old_status_id="3" new_status_id="7" author="false"/>
    <transition old_status_id="7" new_status_id="5" author="false"/>
    <transition old_status_id="0" new_status_id="1" author="true"/>
    <transition old_status_id="1" new_status_id="6" author="true"/>
    <transition old_status_id="2" new_status_id="6" author="true"/>
    <transition old_status_id="4" new_status_id="6" author="true"/>
    <transition old_status_id="3" new_status_id="6" author="true"/>
    <transition old_status_id="7" new_status_id="6" author="true"/>
    <transition old_status_id="4" new_status_id="2" author="true"/>
</transitions>
```

### Endpoint to get field permissions for given role and tracker

* [GET] /workflow/permissions.xml?role_id=1&tracker_id=1 | .json

```
<?xml version="1.0" encoding="UTF-8"?>
<permissions>
    <fields type="array">
        <field id="project_id" name="Project" />
        <field id="tracker_id" name="Tracker" />
        <field id="subject" name="Subject" />
        <field id="description" name="Description" />
        <field id="priority_id" name="Priority" />
        <field id="is_private" name="Private" />
        <field id="assigned_to_id" name="Assignee" />
        <field id="category_id" name="Category" />
        <field id="start_date" name="Start date" />
    </fields>
    <custom_fields type="array">
        <custom_field>
            <id>7</id>
            <type>IssueCustomField</type>
            <name>Място на възникване</name>
            <customized_type>issue</customized_type>
            <field_format>list</field_format>
            <possible_values type="array">
                <possible_value value="Тестова среда" label="Тестова среда" />
                <possible_value value="Продукционна среда" label="Продукционна среда" />
                <possible_value value="Навсякъде" label="Навсякъде" />
            </possible_values>
            <regexp />
            <min_length />
            <max_length />
            <is_required>false</is_required>
            <is_for_all>false</is_for_all>
            <is_filter>false</is_filter>
            <position>2</position>
            <searchable>true</searchable>
            <default_value />
            <editable>true</editable>
            <visible>true</visible>
            <multiple>false</multiple>
            <format_store url_pattern="" edit_tag_style="" />
            <description>Среда в която е установено несъответствието</description>
        </custom_field>
        <custom_field>
            <id>8</id>
            <type>IssueCustomField</type>
            <name>Място на решаване</name>
            <customized_type>issue</customized_type>
            <field_format>list</field_format>
            <possible_values type="array">
                <possible_value value="Тестова среда" label="Тестова среда" />
                <possible_value value="Продукционна среда" label="Продукционна среда" />
                <possible_value value="Навсякъде" label="Навсякъде" />
            </possible_values>
            <regexp />
            <min_length />
            <max_length />
            <is_required>false</is_required>
            <is_for_all>false</is_for_all>
            <is_filter>false</is_filter>
            <position>3</position>
            <searchable>false</searchable>
            <default_value />
            <editable>true</editable>
            <visible>true</visible>
            <multiple>false</multiple>
            <format_store url_pattern="" edit_tag_style="" />
            <description>Среда, в която е извършено действието</description>
        </custom_field>
        <custom_field>
            <id>9</id>
            <type>IssueCustomField</type>
            <name>Предприети действия</name>
            <customized_type>issue</customized_type>
            <field_format>text</field_format>
            <regexp />
            <min_length>5</min_length>
            <max_length />
            <is_required>false</is_required>
            <is_for_all>false</is_for_all>
            <is_filter>false</is_filter>
            <position>4</position>
            <searchable>false</searchable>
            <default_value />
            <editable>true</editable>
            <visible>true</visible>
            <multiple>false</multiple>
            <format_store text_formatting="" />
            <description>Описание на извършените промени или действия - какво е направено, за да се обслужи заявката? Например: Предоставени разяснения по работата на системата, Извършена корекция в логиката на системата, Реализирана функционалност, Оказано съдействие</description>
        </custom_field>
        <custom_field>
            <id>10</id>
            <type>IssueCustomField</type>
            <name>Причина за възникване</name>
            <customized_type>issue</customized_type>
            <field_format>text</field_format>
            <regexp />
            <min_length>5</min_length>
            <max_length />
            <is_required>false</is_required>
            <is_for_all>false</is_for_all>
            <is_filter>false</is_filter>
            <position>5</position>
            <searchable>false</searchable>
            <default_value />
            <editable>true</editable>
            <visible>true</visible>
            <multiple>false</multiple>
            <format_store text_formatting="" />
            <description>Примери: Искане на Бенефициента, Неправилна работа със системата, Проблем в реализираната логика, Промяна в утвърдени изисквания</description>
        </custom_field>
    </custom_fields>
    <statuses type="array">
        <status>
            <status_id>1</status_id>
            <name>Нов</name>
            <is_closed>false</is_closed>
            <position>1</position>
            <default_done_ratio />
            <permissions>
                <permission field="fixed_version_id" permission="readonly" />
                <permission field="description" permission="required" />
                <permission field="assigned_to_id" permission="readonly" />
                <permission field="category_id" permission="required" />
                <permission field="start_date" permission="readonly" />
                <permission field="7" permission="required" />
                <permission field="8" permission="readonly" />
                <permission field="9" permission="readonly" />
                <permission field="10" permission="readonly" />
                <permission field="11" permission="readonly" />
            </permissions>
        </status>
        <status>
            <status_id>2</status_id>
            <name>Възложен</name>
            <is_closed>false</is_closed>
            <position>3</position>
            <default_done_ratio />
            <permissions>
                <permission field="fixed_version_id" permission="readonly" />
                <permission field="subject" permission="readonly" />
                <permission field="description" permission="readonly" />
                <permission field="assigned_to_id" permission="readonly" />
                <permission field="category_id" permission="required" />
                <permission field="start_date" permission="readonly" />
                <permission field="7" permission="required" />
                <permission field="8" permission="readonly" />
                <permission field="9" permission="readonly" />
                <permission field="10" permission="readonly" />
                <permission field="11" permission="readonly" />
            </permissions>
        </status>
        <status>
            <status_id>4</status_id>
            <name>Обратна връзка</name>
            <is_closed>false</is_closed>
            <position>4</position>
            <default_done_ratio />
            <permissions>
                <permission field="fixed_version_id" permission="readonly" />
                <permission field="subject" permission="readonly" />
                <permission field="description" permission="readonly" />
                <permission field="assigned_to_id" permission="readonly" />
                <permission field="category_id" permission="required" />
                <permission field="start_date" permission="readonly" />
                <permission field="7" permission="required" />
                <permission field="8" permission="readonly" />
                <permission field="9" permission="readonly" />
                <permission field="10" permission="readonly" />
                <permission field="11" permission="readonly" />
            </permissions>
        </status>
        <status>
            <status_id>3</status_id>
            <name>Решен</name>
            <is_closed>false</is_closed>
            <position>5</position>
            <default_done_ratio />
            <permissions>
                <permission field="fixed_version_id" permission="readonly" />
                <permission field="subject" permission="readonly" />
                <permission field="description" permission="readonly" />
                <permission field="assigned_to_id" permission="readonly" />
                <permission field="category_id" permission="required" />
                <permission field="start_date" permission="readonly" />
                <permission field="7" permission="required" />
                <permission field="8" permission="readonly" />
                <permission field="9" permission="readonly" />
                <permission field="10" permission="readonly" />
                <permission field="11" permission="readonly" />
            </permissions>
        </status>
        <status>
            <status_id>7</status_id>
            <name>Отворен отново</name>
            <is_closed>false</is_closed>
            <position>6</position>
            <default_done_ratio />
            <permissions>
                <permission field="fixed_version_id" permission="readonly" />
                <permission field="subject" permission="readonly" />
                <permission field="description" permission="readonly" />
                <permission field="assigned_to_id" permission="readonly" />
                <permission field="category_id" permission="required" />
                <permission field="start_date" permission="readonly" />
                <permission field="7" permission="required" />
                <permission field="8" permission="readonly" />
                <permission field="9" permission="readonly" />
                <permission field="10" permission="readonly" />
                <permission field="11" permission="readonly" />
            </permissions>
        </status>
        <status>
            <status_id>5</status_id>
            <name>Затворен</name>
            <is_closed>true</is_closed>
            <position>7</position>
            <default_done_ratio />
            <permissions>
                <permission field="fixed_version_id" permission="readonly" />
                <permission field="project_id" permission="readonly" />
                <permission field="tracker_id" permission="readonly" />
                <permission field="subject" permission="readonly" />
                <permission field="description" permission="readonly" />
                <permission field="priority_id" permission="readonly" />
                <permission field="is_private" permission="readonly" />
                <permission field="assigned_to_id" permission="readonly" />
                <permission field="category_id" permission="readonly" />
                <permission field="start_date" permission="readonly" />
                <permission field="7" permission="readonly" />
                <permission field="8" permission="readonly" />
                <permission field="9" permission="readonly" />
                <permission field="10" permission="readonly" />
                <permission field="11" permission="readonly" />
            </permissions>
        </status>
        <status>
            <status_id>6</status_id>
            <name>Невалиден</name>
            <is_closed>true</is_closed>
            <position>8</position>
            <default_done_ratio />
            <permissions>
                <permission field="fixed_version_id" permission="readonly" />
                <permission field="project_id" permission="readonly" />
                <permission field="tracker_id" permission="readonly" />
                <permission field="subject" permission="readonly" />
                <permission field="description" permission="readonly" />
                <permission field="priority_id" permission="readonly" />
                <permission field="is_private" permission="readonly" />
                <permission field="assigned_to_id" permission="readonly" />
                <permission field="category_id" permission="readonly" />
                <permission field="start_date" permission="readonly" />
                <permission field="7" permission="readonly" />
                <permission field="8" permission="readonly" />
                <permission field="9" permission="readonly" />
                <permission field="10" permission="readonly" />
                <permission field="11" permission="readonly" />
            </permissions>
        </status>
    </statuses>
</permissions>
```

How to use
-------
```
  $ cd /path/to/redmine/plugins
  $ git clone git://github.com/RealEnder/redmine_workflow_api.git redmine_workflow_api
```
Then restart redmine.

Compatible with:	Redmine 3.4.x, 3.3.x, 3.2.x, 3.1.x, 3.0.x, 2.6.x, 2.5.x, 2.4.x
Tested with Redmine 3.3.0, 3.4.2

License
-------
Copyright 2016 Alex Stanev <alex@stanev.org>
This plugin is released under the GPL v3 license. See
LICENSE for more information.
