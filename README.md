# issue

這個 repo 用於個人通過 project、issue、action 和 secret 功能來組織和管理工作流程。

## Projects

透過 Projects 管理個人工作，建立 repo issue 轉換為 project card，並安排時間消化這些 project card。

project card 狀態：

- To Do
- In Progress
- Done

`To Do => In Progress` 建立分支，開始進行 issue。

`In Progress => Done` 當 PR 完成合併後，自動將狀態轉為完成。

## Issues

issue type

- feature
- bug
- documentation
- test

## Actions

- template
  - feature：feature/doc/test issue 表單模板。
  - bug：bug issue 表單模板。
  - pull request：PR 表單模板。
- workflow
  - build：CI/CD build script
  - test：CI/CD unit test script

## Secrets and Variables

保存環境變數和機密資訊
