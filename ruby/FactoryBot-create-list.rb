#FactoryBotで複数のインスタンスを生成したい場合

tasks = create_list(:task, 3) #変数tasksに3つのtaskインスタンスの配列が入っている

tasks = create_list(:task, 3, :doing, title: 'overwrite_title')
# :doingはtrait、titleは上書き

create_list(<ファクトリ名>, <インスタンスの数>, <traitや上書きしたい項目>)