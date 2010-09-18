.class public Lcom/bnsoft/simchecker/SimChecker;
.super Landroid/app/Activity;
.source "SimChecker.java"

# interfaces
.implements Lcom/bnsoft/simchecker/SimImportThread$FinishedImportCallBack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bnsoft/simchecker/SimChecker$QueryHandler;
    }
.end annotation


# static fields
.field private static final COLUMN_NAMES:[Ljava/lang/String; = null

.field private static final DBG:Z = false

.field private static final IMPORT_KEY:Ljava/lang/String; = "import"

.field static final IMPORT_POPUP:I = 0x2

.field public static final NAME_COLUMN:I = 0x0

.field public static final NUMBER_COLUMN:I = 0x1

.field protected static final QUERY_TOKEN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SimChecker"

.field static final YES_IMPORT_POPUP:I = 0x2

.field static final YES_OR_NO_POPUP:I = 0x1

.field private static volatile importThread:Lcom/bnsoft/simchecker/SimImportThread;


# instance fields
.field private mImport:Z

.field protected mQueryHandler:Lcom/bnsoft/simchecker/SimChecker$QueryHandler;

.field private mSimUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 39
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "number"

    aput-object v2, v0, v1

    sput-object v0, Lcom/bnsoft/simchecker/SimChecker;->COLUMN_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bnsoft/simchecker/SimChecker;->mImport:Z

    .line 46
    const-string v0, "content://icc/adn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/bnsoft/simchecker/SimChecker;->mSimUri:Landroid/net/Uri;

    .line 123
    return-void
.end method

.method static synthetic access$000()Lcom/bnsoft/simchecker/SimImportThread;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Lcom/bnsoft/simchecker/SimChecker;->importThread:Lcom/bnsoft/simchecker/SimImportThread;

    return-object v0
.end method

.method static synthetic access$002(Lcom/bnsoft/simchecker/SimImportThread;)Lcom/bnsoft/simchecker/SimImportThread;
    .registers 1
    .parameter "x0"

    .prologue
    .line 21
    sput-object p0, Lcom/bnsoft/simchecker/SimChecker;->importThread:Lcom/bnsoft/simchecker/SimImportThread;

    return-object p0
.end method

.method static synthetic access$102(Lcom/bnsoft/simchecker/SimChecker;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/bnsoft/simchecker/SimChecker;->mImport:Z

    return p1
.end method

.method static synthetic access$200(Lcom/bnsoft/simchecker/SimChecker;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/bnsoft/simchecker/SimChecker;->runThread()V

    return-void
.end method

.method static synthetic access$300(Lcom/bnsoft/simchecker/SimChecker;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/bnsoft/simchecker/SimChecker;->reQuery()V

    return-void
.end method

.method private query()V
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 168
    iget-object v0, p0, Lcom/bnsoft/simchecker/SimChecker;->mQueryHandler:Lcom/bnsoft/simchecker/SimChecker$QueryHandler;

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/bnsoft/simchecker/SimChecker;->mSimUri:Landroid/net/Uri;

    sget-object v4, Lcom/bnsoft/simchecker/SimChecker;->COLUMN_NAMES:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/bnsoft/simchecker/SimChecker$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method private reQuery()V
    .registers 1

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/bnsoft/simchecker/SimChecker;->query()V

    .line 174
    return-void
.end method

.method private runThread()V
    .registers 2

    .prologue
    .line 182
    sget-object v0, Lcom/bnsoft/simchecker/SimChecker;->importThread:Lcom/bnsoft/simchecker/SimImportThread;

    invoke-virtual {v0}, Lcom/bnsoft/simchecker/SimImportThread;->finishLoading()V

    .line 183
    invoke-virtual {p0}, Lcom/bnsoft/simchecker/SimChecker;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_15

    .line 185
    sget-object v0, Lcom/bnsoft/simchecker/SimChecker;->importThread:Lcom/bnsoft/simchecker/SimImportThread;

    invoke-virtual {v0}, Lcom/bnsoft/simchecker/SimImportThread;->setProgressEnv()V

    .line 186
    sget-object v0, Lcom/bnsoft/simchecker/SimChecker;->importThread:Lcom/bnsoft/simchecker/SimImportThread;

    invoke-virtual {v0}, Lcom/bnsoft/simchecker/SimImportThread;->runOnProgress()V

    .line 188
    :cond_15
    return-void
.end method


# virtual methods
.method public FinishedImport(I)V
    .registers 3
    .parameter "count"

    .prologue
    .line 193
    const/4 v0, 0x0

    sput-object v0, Lcom/bnsoft/simchecker/SimChecker;->importThread:Lcom/bnsoft/simchecker/SimImportThread;

    .line 194
    if-nez p1, :cond_e

    .line 196
    new-instance v0, Lcom/bnsoft/simchecker/SimChecker$3;

    invoke-direct {v0, p0}, Lcom/bnsoft/simchecker/SimChecker$3;-><init>(Lcom/bnsoft/simchecker/SimChecker;)V

    invoke-virtual {p0, v0}, Lcom/bnsoft/simchecker/SimChecker;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 209
    :goto_d
    return-void

    .line 207
    :cond_e
    invoke-virtual {p0}, Lcom/bnsoft/simchecker/SimChecker;->finish()V

    goto :goto_d
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 214
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "ev"

    .prologue
    .line 220
    const/4 v0, 0x0

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 177
    const-string v0, "SimChecker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SimChecker] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x4

    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    if-eqz p1, :cond_e

    .line 54
    const-string v0, "import"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bnsoft/simchecker/SimChecker;->mImport:Z

    .line 56
    :cond_e
    invoke-virtual {p0}, Lcom/bnsoft/simchecker/SimChecker;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 59
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/bnsoft/simchecker/SimChecker;->setContentView(I)V

    .line 61
    iget-boolean v0, p0, Lcom/bnsoft/simchecker/SimChecker;->mImport:Z

    if-nez v0, :cond_31

    .line 62
    new-instance v0, Lcom/bnsoft/simchecker/SimChecker$QueryHandler;

    invoke-virtual {p0}, Lcom/bnsoft/simchecker/SimChecker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/bnsoft/simchecker/SimChecker$QueryHandler;-><init>(Lcom/bnsoft/simchecker/SimChecker;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/bnsoft/simchecker/SimChecker;->mQueryHandler:Lcom/bnsoft/simchecker/SimChecker$QueryHandler;

    .line 64
    if-nez p1, :cond_30

    .line 65
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bnsoft/simchecker/SimChecker;->showDialog(I)V

    .line 70
    :cond_30
    :goto_30
    return-void

    .line 67
    :cond_31
    sget-object v0, Lcom/bnsoft/simchecker/SimChecker;->importThread:Lcom/bnsoft/simchecker/SimImportThread;

    invoke-virtual {v0, p0}, Lcom/bnsoft/simchecker/SimImportThread;->setCallBack(Lcom/bnsoft/simchecker/SimImportThread$FinishedImportCallBack;)V

    .line 68
    sget-object v0, Lcom/bnsoft/simchecker/SimChecker;->importThread:Lcom/bnsoft/simchecker/SimImportThread;

    invoke-virtual {v0, p0}, Lcom/bnsoft/simchecker/SimImportThread;->setContext(Landroid/app/Activity;)V

    goto :goto_30
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 74
    packed-switch p1, :pswitch_data_70

    .line 120
    const/4 v1, 0x0

    :goto_5
    return-object v1

    .line 77
    :pswitch_6
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x7f02

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f040004

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f040003

    invoke-virtual {p0, v2}, Lcom/bnsoft/simchecker/SimChecker;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f040001

    invoke-virtual {p0, v2}, Lcom/bnsoft/simchecker/SimChecker;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/bnsoft/simchecker/SimChecker$2;

    invoke-direct {v3, p0}, Lcom/bnsoft/simchecker/SimChecker$2;-><init>(Lcom/bnsoft/simchecker/SimChecker;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f040002

    invoke-virtual {p0, v2}, Lcom/bnsoft/simchecker/SimChecker;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/bnsoft/simchecker/SimChecker$1;

    invoke-direct {v3, p0}, Lcom/bnsoft/simchecker/SimChecker$1;-><init>(Lcom/bnsoft/simchecker/SimChecker;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_5

    .line 110
    :pswitch_4c
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 111
    .local v0, LoadingDialog:Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/bnsoft/simchecker/SimChecker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 112
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 113
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 114
    iget-object v1, p0, Lcom/bnsoft/simchecker/SimChecker;->mQueryHandler:Lcom/bnsoft/simchecker/SimChecker$QueryHandler;

    if-eqz v1, :cond_6d

    .line 115
    invoke-direct {p0}, Lcom/bnsoft/simchecker/SimChecker;->query()V

    :cond_6d
    move-object v1, v0

    .line 117
    goto :goto_5

    .line 74
    nop

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_6
        :pswitch_4c
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 229
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 230
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 234
    sget-object v0, Lcom/bnsoft/simchecker/SimChecker;->importThread:Lcom/bnsoft/simchecker/SimImportThread;

    if-eqz v0, :cond_11

    sget-object v0, Lcom/bnsoft/simchecker/SimChecker;->importThread:Lcom/bnsoft/simchecker/SimImportThread;

    invoke-virtual {v0}, Lcom/bnsoft/simchecker/SimImportThread;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 235
    sget-object v0, Lcom/bnsoft/simchecker/SimChecker;->importThread:Lcom/bnsoft/simchecker/SimImportThread;

    invoke-virtual {v0}, Lcom/bnsoft/simchecker/SimImportThread;->onPause()V

    .line 237
    :cond_11
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 238
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 242
    sget-object v0, Lcom/bnsoft/simchecker/SimChecker;->importThread:Lcom/bnsoft/simchecker/SimImportThread;

    if-eqz v0, :cond_9

    .line 243
    sget-object v0, Lcom/bnsoft/simchecker/SimChecker;->importThread:Lcom/bnsoft/simchecker/SimImportThread;

    invoke-virtual {v0}, Lcom/bnsoft/simchecker/SimImportThread;->onResume()V

    .line 245
    :cond_9
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 246
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 250
    const-string v0, "import"

    iget-boolean v1, p0, Lcom/bnsoft/simchecker/SimChecker;->mImport:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 251
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 252
    return-void
.end method
