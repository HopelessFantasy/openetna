.class final Landroid/app/ActivityThread$ProviderRecord;
.super Ljava/lang/Object;
.source "ActivityThread.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ProviderRecord"
.end annotation


# instance fields
.field final mLocalProvider:Landroid/content/ContentProvider;

.field final mName:Ljava/lang/String;

.field final mProvider:Landroid/content/IContentProvider;

.field final synthetic this$0:Landroid/app/ActivityThread;


# direct methods
.method constructor <init>(Landroid/app/ActivityThread;Ljava/lang/String;Landroid/content/IContentProvider;Landroid/content/ContentProvider;)V
    .registers 5
    .parameter
    .parameter "name"
    .parameter "provider"
    .parameter "localProvider"

    .prologue
    .line 1151
    iput-object p1, p0, Landroid/app/ActivityThread$ProviderRecord;->this$0:Landroid/app/ActivityThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1152
    iput-object p2, p0, Landroid/app/ActivityThread$ProviderRecord;->mName:Ljava/lang/String;

    .line 1153
    iput-object p3, p0, Landroid/app/ActivityThread$ProviderRecord;->mProvider:Landroid/content/IContentProvider;

    .line 1154
    iput-object p4, p0, Landroid/app/ActivityThread$ProviderRecord;->mLocalProvider:Landroid/content/ContentProvider;

    .line 1155
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .prologue
    .line 1158
    iget-object v0, p0, Landroid/app/ActivityThread$ProviderRecord;->this$0:Landroid/app/ActivityThread;

    iget-object v1, p0, Landroid/app/ActivityThread$ProviderRecord;->mName:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/ActivityThread$ProviderRecord;->mProvider:Landroid/content/IContentProvider;

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityThread;->removeDeadProvider(Ljava/lang/String;Landroid/content/IContentProvider;)V

    .line 1159
    return-void
.end method
