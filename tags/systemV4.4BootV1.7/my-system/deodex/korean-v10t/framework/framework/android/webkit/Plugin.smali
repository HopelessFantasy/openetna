.class public Landroid/webkit/Plugin;
.super Ljava/lang/Object;
.source "Plugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/Plugin$1;,
        Landroid/webkit/Plugin$DefaultClickHandler;,
        Landroid/webkit/Plugin$PreferencesClickHandler;
    }
.end annotation


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mFileName:Ljava/lang/String;

.field private mHandler:Landroid/webkit/Plugin$PreferencesClickHandler;

.field private mName:Ljava/lang/String;

.field private mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "name"
    .parameter "path"
    .parameter "fileName"
    .parameter "description"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Landroid/webkit/Plugin;->mName:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Landroid/webkit/Plugin;->mPath:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Landroid/webkit/Plugin;->mFileName:Ljava/lang/String;

    .line 48
    iput-object p4, p0, Landroid/webkit/Plugin;->mDescription:Ljava/lang/String;

    .line 49
    new-instance v0, Landroid/webkit/Plugin$DefaultClickHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/webkit/Plugin$DefaultClickHandler;-><init>(Landroid/webkit/Plugin;Landroid/webkit/Plugin$1;)V

    iput-object v0, p0, Landroid/webkit/Plugin;->mHandler:Landroid/webkit/Plugin$PreferencesClickHandler;

    .line 50
    return-void
.end method

.method static synthetic access$100(Landroid/webkit/Plugin;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Landroid/webkit/Plugin;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Landroid/webkit/Plugin;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Landroid/webkit/Plugin;->mName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public dispatchClickEvent(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 96
    iget-object v0, p0, Landroid/webkit/Plugin;->mHandler:Landroid/webkit/Plugin$PreferencesClickHandler;

    if-eqz v0, :cond_9

    .line 97
    iget-object v0, p0, Landroid/webkit/Plugin;->mHandler:Landroid/webkit/Plugin$PreferencesClickHandler;

    invoke-interface {v0, p1}, Landroid/webkit/Plugin$PreferencesClickHandler;->handleClickEvent(Landroid/content/Context;)V

    .line 99
    :cond_9
    return-void
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Landroid/webkit/Plugin;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Landroid/webkit/Plugin;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Landroid/webkit/Plugin;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Landroid/webkit/Plugin;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public setClickHandler(Landroid/webkit/Plugin$PreferencesClickHandler;)V
    .registers 2
    .parameter "handler"

    .prologue
    .line 89
    iput-object p1, p0, Landroid/webkit/Plugin;->mHandler:Landroid/webkit/Plugin$PreferencesClickHandler;

    .line 90
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2
    .parameter "description"

    .prologue
    .line 85
    iput-object p1, p0, Landroid/webkit/Plugin;->mDescription:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .registers 2
    .parameter "fileName"

    .prologue
    .line 81
    iput-object p1, p0, Landroid/webkit/Plugin;->mFileName:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 73
    iput-object p1, p0, Landroid/webkit/Plugin;->mName:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .registers 2
    .parameter "path"

    .prologue
    .line 77
    iput-object p1, p0, Landroid/webkit/Plugin;->mPath:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Landroid/webkit/Plugin;->mName:Ljava/lang/String;

    return-object v0
.end method
