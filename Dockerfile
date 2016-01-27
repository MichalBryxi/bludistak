FROM rails:onbuild

RUN rake db:create db:migrate  
