.class Lcom/android/mms/CbLanguageProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "CbLanguageProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/CbLanguageProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 41
    const-string v0, "cblanguage.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 42
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 46
    const-string v0, "CREATE TABLE cblanguages (_id INTEGER PRIMARY KEY,cbmilanguageenglish INTEGER,cbmilanguageitaliano INTEGER,cbmilanguagedeutsch INTEGER,cbmilanguagefrench INTEGER,cbmilanguagespanish INTEGER,cbmilanguagegreek INTEGER,cbmilanguagedutch INTEGER,cbmilanguageportuguese INTEGER,cbmilanguageswedish INTEGER,cbmilanguagedanish INTEGER,cbmilanguageromanian INTEGER,cbmilanguageturkish INTEGER,cbmilanguagehungarian INTEGER,cbmilanguageslovak INTEGER,cbmilanguageczech INTEGER,cbmilanguageserbocroat INTEGER,cbmilanguagebularian INTEGER,cbmilanguagepolish INTEGER,cbmilanguageslovenian INTEGER,cbmilanguagechinesetr INTEGER,cbmilanguagechinesesi INTEGER,cbmilanguagekorean INTEGER,cbmilanguagehebrew INTEGER,cbmilanguagearabic INTEGER,cbmilanguagerussian INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 7
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 78
    const-string v0, "CbLanguageProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which will destroy all old data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v0, "DROP TABLE IF EXISTS cblanguages"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0, p1}, Lcom/android/mms/CbLanguageProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 82
    return-void
.end method
