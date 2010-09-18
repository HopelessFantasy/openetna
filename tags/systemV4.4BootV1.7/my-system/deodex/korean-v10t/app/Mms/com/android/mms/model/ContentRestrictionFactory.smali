.class public Lcom/android/mms/model/ContentRestrictionFactory;
.super Ljava/lang/Object;
.source "ContentRestrictionFactory.java"


# static fields
.field private static sContentRestriction:Lcom/android/mms/model/ContentRestriction;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static getContentRestriction(Landroid/content/ContentResolver;)Lcom/android/mms/model/ContentRestriction;
    .registers 2
    .parameter "resolver"

    .prologue
    .line 28
    sget-object v0, Lcom/android/mms/model/ContentRestrictionFactory;->sContentRestriction:Lcom/android/mms/model/ContentRestriction;

    if-nez v0, :cond_b

    .line 29
    new-instance v0, Lcom/android/mms/model/CarrierContentRestriction;

    invoke-direct {v0, p0}, Lcom/android/mms/model/CarrierContentRestriction;-><init>(Landroid/content/ContentResolver;)V

    sput-object v0, Lcom/android/mms/model/ContentRestrictionFactory;->sContentRestriction:Lcom/android/mms/model/ContentRestriction;

    .line 31
    :cond_b
    sget-object v0, Lcom/android/mms/model/ContentRestrictionFactory;->sContentRestriction:Lcom/android/mms/model/ContentRestriction;

    return-object v0
.end method
