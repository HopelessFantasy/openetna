.class Lorg/apache/harmony/security/asn1/InformationObjectSet$Entry;
.super Ljava/lang/Object;
.source "InformationObjectSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/asn1/InformationObjectSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Entry"
.end annotation


# instance fields
.field public object:Ljava/lang/Object;

.field public oid:[I

.field final synthetic this$0:Lorg/apache/harmony/security/asn1/InformationObjectSet;


# direct methods
.method public constructor <init>(Lorg/apache/harmony/security/asn1/InformationObjectSet;[ILjava/lang/Object;)V
    .registers 4
    .parameter
    .parameter "oid"
    .parameter "object"

    .prologue
    .line 103
    iput-object p1, p0, Lorg/apache/harmony/security/asn1/InformationObjectSet$Entry;->this$0:Lorg/apache/harmony/security/asn1/InformationObjectSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p2, p0, Lorg/apache/harmony/security/asn1/InformationObjectSet$Entry;->oid:[I

    .line 105
    iput-object p3, p0, Lorg/apache/harmony/security/asn1/InformationObjectSet$Entry;->object:Ljava/lang/Object;

    .line 106
    return-void
.end method
