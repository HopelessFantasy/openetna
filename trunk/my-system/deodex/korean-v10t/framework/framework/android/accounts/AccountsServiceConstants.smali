.class public Landroid/accounts/AccountsServiceConstants;
.super Ljava/lang/Object;
.source "AccountsServiceConstants.java"


# static fields
.field private static final ACCOUNTS_SERVICE_ACTION:Ljava/lang/String; = "android.accounts.IAccountsService"

.field public static final LOGIN_ACCOUNTS_CHANGED_ACTION:Ljava/lang/String; = "android.accounts.LOGIN_ACCOUNTS_CHANGED"

.field public static final LOGIN_ACCOUNTS_MISSING_ACTION:Ljava/lang/String; = "android.accounts.LOGIN_ACCOUNTS_MISSING"

.field public static final SERVICE_INTENT:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 62
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.google.android.googleapps"

    const-string v2, "com.google.android.googleapps.GoogleLoginService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.accounts.IAccountsService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Landroid/accounts/AccountsServiceConstants;->SERVICE_INTENT:Landroid/content/Intent;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static final isForAccountsService(Landroid/content/Intent;)Z
    .registers 3
    .parameter "bindIntent"

    .prologue
    .line 75
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, otherAction:Ljava/lang/String;
    if-eqz v0, :cond_10

    const-string v1, "android.accounts.IAccountsService"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method
