MIMIC-IV-ED database has been released, but the official code to build the database hasn't been released. 

This code was adapted from official code to build mimic-iv database, which can be used to create mimic-iv-ed database in postgresql.

Please visit https://physionet.org/content/mimic-iv-ed/1.0/ for more information about the MIMIC-IV-ED database.

Bug: the current data file from the mimic website, there are too many space by mistake in the vitalsign.csv line 1164877 pain column, you need to remove the space or you will get an error.

请关注微信公众号：市一重症，获取更多MIMIC数据库相关资讯。
