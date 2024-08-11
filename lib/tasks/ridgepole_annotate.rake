# ridgepoleの実行時にannotateも実行する
namespace :db do
  desc "Apply Ridgepole schema and run annotate"
  task :ridgepole_apply_and_annotate => [:environment] do
    # Ridgepoleの適用
    system('bundle exec ridgepole --config config/database.yml --file db/schemas/Schemafile --apply')

    # annotate_modelsタスクの呼び出し
    Rake::Task['annotate_models'].invoke
  end
end