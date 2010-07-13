.class public abstract Lcom/google/common/io/BaseHttpConnectionFactory;
.super Lcom/google/common/io/BaseConnectionFactory;

# interfaces
.implements Lcom/google/common/io/HttpConnectionFactory;


# static fields
.field protected static final NETWORK_AVAILABLE_PREF_NAME:Ljava/lang/String; = "HttpWorks"


# direct methods
.method protected constructor <init>()V
    .registers 2

    const-string v0, "HttpWorks"

    invoke-direct {p0, v0}, Lcom/google/common/io/BaseConnectionFactory;-><init>(Ljava/lang/String;)V

    return-void
.end method
