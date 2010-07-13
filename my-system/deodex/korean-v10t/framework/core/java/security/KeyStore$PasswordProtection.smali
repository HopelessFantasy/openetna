.class public Ljava/security/KeyStore$PasswordProtection;
.super Ljava/lang/Object;
.source "KeyStore.java"

# interfaces
.implements Ljava/security/KeyStore$ProtectionParameter;
.implements Ljavax/security/auth/Destroyable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/KeyStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PasswordProtection"
.end annotation


# instance fields
.field private isDestroyed:Z

.field private password:[C


# direct methods
.method public constructor <init>([C)V
    .registers 3
    .parameter "password"

    .prologue
    .line 1274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1263
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/security/KeyStore$PasswordProtection;->isDestroyed:Z

    .line 1277
    if-eqz p1, :cond_10

    .line 1278
    invoke-virtual {p1}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Ljava/security/KeyStore$PasswordProtection;->password:[C

    .line 1281
    :cond_10
    return-void
.end method


# virtual methods
.method public declared-synchronized destroy()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/auth/DestroyFailedException;
        }
    .end annotation

    .prologue
    .line 1306
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Ljava/security/KeyStore$PasswordProtection;->isDestroyed:Z

    .line 1307
    iget-object v0, p0, Ljava/security/KeyStore$PasswordProtection;->password:[C

    if-eqz v0, :cond_11

    .line 1308
    iget-object v0, p0, Ljava/security/KeyStore$PasswordProtection;->password:[C

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 1309
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/KeyStore$PasswordProtection;->password:[C
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_13

    .line 1311
    :cond_11
    monitor-exit p0

    return-void

    .line 1306
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPassword()[C
    .registers 3

    .prologue
    .line 1292
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Ljava/security/KeyStore$PasswordProtection;->isDestroyed:Z

    if-eqz v0, :cond_14

    .line 1293
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "security.36"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_11

    .line 1292
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1295
    :cond_14
    :try_start_14
    iget-object v0, p0, Ljava/security/KeyStore$PasswordProtection;->password:[C
    :try_end_16
    .catchall {:try_start_14 .. :try_end_16} :catchall_11

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized isDestroyed()Z
    .registers 2

    .prologue
    .line 1321
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Ljava/security/KeyStore$PasswordProtection;->isDestroyed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
