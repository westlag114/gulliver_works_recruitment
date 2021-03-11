class CreateRecruitments < ActiveRecord::Migration[6.0]
  def change
    create_table :recruitments, id: :uuid do |t|
      t.string :title, null: false, comment: "タイトル"
      t.references :company, foreign_key: true, type: :uuid
      t.references :occupation, foreign_key: true, type: :uuid
      t.references :industry, foreign_key: true, type: :uuid
      t.references :workplace, foreign_key: { to_table: :prefectures }, type: :uuid
      t.text :job_description, comment: "仕事内容"
      t.text :work_conditions, comment: "労働条件"
      t.text :qualification_requirement, comment: "応募条件"
      t.text :is_public, comment: "公開しているかどうか"
      t.references :employment_status, foreign_key: true, type: :uuid
      t.text :status, comment: "ステータス"

      t.timestamps
    end
  end
end
