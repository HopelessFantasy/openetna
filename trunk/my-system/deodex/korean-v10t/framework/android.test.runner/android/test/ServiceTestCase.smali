.class public abstract Landroid/test/ServiceTestCase;
.super Landroid/test/AndroidTestCase;
.source "ServiceTestCase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/app/Service;",
        ">",
        "Landroid/test/AndroidTestCase;"
    }
.end annotation


# instance fields
.field private mApplication:Landroid/app/Application;

.field private mService:Landroid/app/Service;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mServiceAttached:Z

.field private mServiceBound:Z

.field mServiceClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mServiceCreated:Z

.field private mServiceId:I

.field private mServiceIntent:Landroid/content/Intent;

.field private mServiceStarted:Z

.field private mSystemContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Landroid/test/ServiceTestCase;,"Landroid/test/ServiceTestCase<TT;>;"
    .local p1, serviceClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    .line 78
    invoke-direct {p0}, Landroid/test/AndroidTestCase;-><init>()V

    .line 83
    iput-boolean v0, p0, Landroid/test/ServiceTestCase;->mServiceAttached:Z

    .line 84
    iput-boolean v0, p0, Landroid/test/ServiceTestCase;->mServiceCreated:Z

    .line 85
    iput-boolean v0, p0, Landroid/test/ServiceTestCase;->mServiceStarted:Z

    .line 86
    iput-boolean v0, p0, Landroid/test/ServiceTestCase;->mServiceBound:Z

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/test/ServiceTestCase;->mServiceIntent:Landroid/content/Intent;

    .line 79
    iput-object p1, p0, Landroid/test/ServiceTestCase;->mServiceClass:Ljava/lang/Class;

    .line 80
    return-void
.end method


# virtual methods
.method protected bindService(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 5
    .parameter "intent"

    .prologue
    .local p0, this:Landroid/test/ServiceTestCase;,"Landroid/test/ServiceTestCase<TT;>;"
    const/4 v2, 0x1

    .line 186
    iget-boolean v1, p0, Landroid/test/ServiceTestCase;->mServiceStarted:Z

    invoke-static {v1}, Landroid/test/ServiceTestCase;->assertFalse(Z)V

    .line 187
    iget-boolean v1, p0, Landroid/test/ServiceTestCase;->mServiceBound:Z

    invoke-static {v1}, Landroid/test/ServiceTestCase;->assertFalse(Z)V

    .line 189
    iget-boolean v1, p0, Landroid/test/ServiceTestCase;->mServiceAttached:Z

    if-nez v1, :cond_12

    .line 190
    invoke-virtual {p0}, Landroid/test/ServiceTestCase;->setupService()V

    .line 192
    :cond_12
    iget-object v1, p0, Landroid/test/ServiceTestCase;->mService:Landroid/app/Service;

    invoke-static {v1}, Landroid/test/ServiceTestCase;->assertNotNull(Ljava/lang/Object;)V

    .line 194
    iget-boolean v1, p0, Landroid/test/ServiceTestCase;->mServiceCreated:Z

    if-nez v1, :cond_22

    .line 195
    iget-object v1, p0, Landroid/test/ServiceTestCase;->mService:Landroid/app/Service;

    invoke-virtual {v1}, Landroid/app/Service;->onCreate()V

    .line 196
    iput-boolean v2, p0, Landroid/test/ServiceTestCase;->mServiceCreated:Z

    .line 199
    :cond_22
    invoke-virtual {p1}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Landroid/test/ServiceTestCase;->mServiceIntent:Landroid/content/Intent;

    .line 200
    iget-object v1, p0, Landroid/test/ServiceTestCase;->mService:Landroid/app/Service;

    invoke-virtual {v1, p1}, Landroid/app/Service;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    .line 202
    .local v0, result:Landroid/os/IBinder;
    iput-boolean v2, p0, Landroid/test/ServiceTestCase;->mServiceBound:Z

    .line 203
    return-object v0
.end method

.method public getApplication()Landroid/app/Application;
    .registers 2

    .prologue
    .line 263
    .local p0, this:Landroid/test/ServiceTestCase;,"Landroid/test/ServiceTestCase<TT;>;"
    iget-object v0, p0, Landroid/test/ServiceTestCase;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method public getService()Landroid/app/Service;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, this:Landroid/test/ServiceTestCase;,"Landroid/test/ServiceTestCase<TT;>;"
    iget-object v0, p0, Landroid/test/ServiceTestCase;->mService:Landroid/app/Service;

    return-object v0
.end method

.method public getSystemContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 273
    .local p0, this:Landroid/test/ServiceTestCase;,"Landroid/test/ServiceTestCase<TT;>;"
    iget-object v0, p0, Landroid/test/ServiceTestCase;->mSystemContext:Landroid/content/Context;

    return-object v0
.end method

.method public setApplication(Landroid/app/Application;)V
    .registers 2
    .parameter "application"

    .prologue
    .line 252
    .local p0, this:Landroid/test/ServiceTestCase;,"Landroid/test/ServiceTestCase<TT;>;"
    iput-object p1, p0, Landroid/test/ServiceTestCase;->mApplication:Landroid/app/Application;

    .line 253
    return-void
.end method

.method protected setUp()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 103
    .local p0, this:Landroid/test/ServiceTestCase;,"Landroid/test/ServiceTestCase<TT;>;"
    invoke-super {p0}, Landroid/test/AndroidTestCase;->setUp()V

    .line 106
    invoke-virtual {p0}, Landroid/test/ServiceTestCase;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/test/ServiceTestCase;->mSystemContext:Landroid/content/Context;

    .line 108
    return-void
.end method

.method protected setupService()V
    .registers 9

    .prologue
    .local p0, this:Landroid/test/ServiceTestCase;,"Landroid/test/ServiceTestCase<TT;>;"
    const/4 v2, 0x0

    .line 117
    iput-object v2, p0, Landroid/test/ServiceTestCase;->mService:Landroid/app/Service;

    .line 119
    :try_start_3
    iget-object v0, p0, Landroid/test/ServiceTestCase;->mServiceClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Service;

    iput-object v0, p0, Landroid/test/ServiceTestCase;->mService:Landroid/app/Service;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_d} :catch_44

    .line 123
    :goto_d
    invoke-virtual {p0}, Landroid/test/ServiceTestCase;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-nez v0, :cond_1b

    .line 124
    new-instance v0, Landroid/test/mock/MockApplication;

    invoke-direct {v0}, Landroid/test/mock/MockApplication;-><init>()V

    invoke-virtual {p0, v0}, Landroid/test/ServiceTestCase;->setApplication(Landroid/app/Application;)V

    .line 126
    :cond_1b
    iget-object v0, p0, Landroid/test/ServiceTestCase;->mService:Landroid/app/Service;

    invoke-virtual {p0}, Landroid/test/ServiceTestCase;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Landroid/test/ServiceTestCase;->mServiceClass:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/test/ServiceTestCase;->getApplication()Landroid/app/Application;

    move-result-object v5

    move-object v4, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/app/Service;->attach(Landroid/content/Context;Landroid/app/ActivityThread;Ljava/lang/String;Landroid/os/IBinder;Landroid/app/Application;Ljava/lang/Object;)V

    .line 135
    iget-object v0, p0, Landroid/test/ServiceTestCase;->mService:Landroid/app/Service;

    invoke-static {v0}, Landroid/test/ServiceTestCase;->assertNotNull(Ljava/lang/Object;)V

    .line 137
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    iput v0, p0, Landroid/test/ServiceTestCase;->mServiceId:I

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/test/ServiceTestCase;->mServiceAttached:Z

    .line 139
    return-void

    .line 120
    :catch_44
    move-exception v0

    move-object v7, v0

    .line 121
    .local v7, e:Ljava/lang/Exception;
    iget-object v0, p0, Landroid/test/ServiceTestCase;->mService:Landroid/app/Service;

    invoke-static {v0}, Landroid/test/ServiceTestCase;->assertNotNull(Ljava/lang/Object;)V

    goto :goto_d
.end method

.method protected shutdownService()V
    .registers 4

    .prologue
    .local p0, this:Landroid/test/ServiceTestCase;,"Landroid/test/ServiceTestCase<TT;>;"
    const/4 v2, 0x0

    .line 212
    iget-boolean v0, p0, Landroid/test/ServiceTestCase;->mServiceStarted:Z

    if-eqz v0, :cond_16

    .line 213
    iget-object v0, p0, Landroid/test/ServiceTestCase;->mService:Landroid/app/Service;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    .line 214
    iput-boolean v2, p0, Landroid/test/ServiceTestCase;->mServiceStarted:Z

    .line 219
    :cond_c
    :goto_c
    iget-boolean v0, p0, Landroid/test/ServiceTestCase;->mServiceCreated:Z

    if-eqz v0, :cond_15

    .line 220
    iget-object v0, p0, Landroid/test/ServiceTestCase;->mService:Landroid/app/Service;

    invoke-virtual {v0}, Landroid/app/Service;->onDestroy()V

    .line 222
    :cond_15
    return-void

    .line 215
    :cond_16
    iget-boolean v0, p0, Landroid/test/ServiceTestCase;->mServiceBound:Z

    if-eqz v0, :cond_c

    .line 216
    iget-object v0, p0, Landroid/test/ServiceTestCase;->mService:Landroid/app/Service;

    iget-object v1, p0, Landroid/test/ServiceTestCase;->mServiceIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    .line 217
    iput-boolean v2, p0, Landroid/test/ServiceTestCase;->mServiceBound:Z

    goto :goto_c
.end method

.method protected startService(Landroid/content/Intent;)V
    .registers 5
    .parameter "intent"

    .prologue
    .local p0, this:Landroid/test/ServiceTestCase;,"Landroid/test/ServiceTestCase<TT;>;"
    const/4 v2, 0x1

    .line 150
    iget-boolean v0, p0, Landroid/test/ServiceTestCase;->mServiceStarted:Z

    invoke-static {v0}, Landroid/test/ServiceTestCase;->assertFalse(Z)V

    .line 151
    iget-boolean v0, p0, Landroid/test/ServiceTestCase;->mServiceBound:Z

    invoke-static {v0}, Landroid/test/ServiceTestCase;->assertFalse(Z)V

    .line 153
    iget-boolean v0, p0, Landroid/test/ServiceTestCase;->mServiceAttached:Z

    if-nez v0, :cond_12

    .line 154
    invoke-virtual {p0}, Landroid/test/ServiceTestCase;->setupService()V

    .line 156
    :cond_12
    iget-object v0, p0, Landroid/test/ServiceTestCase;->mService:Landroid/app/Service;

    invoke-static {v0}, Landroid/test/ServiceTestCase;->assertNotNull(Ljava/lang/Object;)V

    .line 158
    iget-boolean v0, p0, Landroid/test/ServiceTestCase;->mServiceCreated:Z

    if-nez v0, :cond_22

    .line 159
    iget-object v0, p0, Landroid/test/ServiceTestCase;->mService:Landroid/app/Service;

    invoke-virtual {v0}, Landroid/app/Service;->onCreate()V

    .line 160
    iput-boolean v2, p0, Landroid/test/ServiceTestCase;->mServiceCreated:Z

    .line 162
    :cond_22
    iget-object v0, p0, Landroid/test/ServiceTestCase;->mService:Landroid/app/Service;

    iget v1, p0, Landroid/test/ServiceTestCase;->mServiceId:I

    invoke-virtual {v0, p1, v1}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 164
    iput-boolean v2, p0, Landroid/test/ServiceTestCase;->mServiceStarted:Z

    .line 165
    return-void
.end method

.method protected tearDown()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 234
    .local p0, this:Landroid/test/ServiceTestCase;,"Landroid/test/ServiceTestCase<TT;>;"
    invoke-virtual {p0}, Landroid/test/ServiceTestCase;->shutdownService()V

    .line 235
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/test/ServiceTestCase;->mService:Landroid/app/Service;

    .line 240
    const-class v0, Landroid/test/ServiceTestCase;

    invoke-virtual {p0, v0}, Landroid/test/ServiceTestCase;->scrubClass(Ljava/lang/Class;)V

    .line 242
    invoke-super {p0}, Landroid/test/AndroidTestCase;->tearDown()V

    .line 243
    return-void
.end method

.method public testServiceTestCaseSetUpProperly()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 277
    .local p0, this:Landroid/test/ServiceTestCase;,"Landroid/test/ServiceTestCase<TT;>;"
    invoke-virtual {p0}, Landroid/test/ServiceTestCase;->setupService()V

    .line 278
    const-string v0, "service should be launched successfully"

    iget-object v1, p0, Landroid/test/ServiceTestCase;->mService:Landroid/app/Service;

    invoke-static {v0, v1}, Landroid/test/ServiceTestCase;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 279
    return-void
.end method
