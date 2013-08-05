class AddForeignKeys < ActiveRecord::Migration
  def up
    execute <<-SQL

      alter table filepaths add constraint filepath_metafile_fk foreign key(metafile_id) references metafiles (id) on delete cascade on update cascade;
      alter table messages add constraint message_user_from_fk foreign key(user_from_id) references users (id) on delete cascade on update cascade;
      alter table messages add constraint message_user_to_fk foreign key(user_to_id) references users (id) on delete cascade on update cascade;
      alter table metalinks add constraint metalink_metafile_from_fk foreign key(metafile_from_id) references metafiles (id) on delete cascade on update cascade;
      alter table metalinks add constraint metalink_metafile_to_fk foreign key(metafile_to_id) references metafiles (id) on delete cascade on update cascade;
      alter table posts add constraint post_talk_fk foreign key(talk_id) references talks (id) on delete cascade on update cascade;
      alter table posts add constraint post_user_fk foreign key(user_id) references users (id) on delete cascade on update cascade;
      alter table subjects add constraint subject_metafile_fk foreign key(metafile_id) references metafiles (id) on delete cascade on update cascade;
      alter table subjects add constraint subject_talk_fk foreign key(talk_id) references talks (id) on delete cascade on update cascade;
      alter table talks add constraint talk_location_fk foreign key(location_id) references locations (id) on delete cascade on update cascade;
      alter table talks add constraint talk_user_fk foreign key(user_id) references users (id) on delete cascade on update cascade;
      alter table users add constraint user_location_fk foreign key(location_id) references locations (id) on delete cascade on update cascade;

SQL

  end
  def down
    execute_sql <<-SQL

      alter table filepaths drop foriegn key filepath_metafile_fk;
      alter table messages drop foreign key message_user_from_fk;
      alter table messages drop foreign key message_user_to_fk;
      alter table metalinks drop foreign key metalink_metafile_from_fk;
      alter table metalinks drop foreign key metalink_metafile_to_fk;
      alter table posts drop foreign key post_talk_fk;
      alter table posts drop foreign key post_user_fk;
      alter table subjects drop foreign key subject_metafile_fk;
      alter table subjects drop foreign key subject_talk_fk;
      alter table talks drop foreign key talk_location_fk;
      alter table talks drop foreign key talk_user_fk;
      alter table users drop foreign key user_location_fk;

SQL
  end
end
