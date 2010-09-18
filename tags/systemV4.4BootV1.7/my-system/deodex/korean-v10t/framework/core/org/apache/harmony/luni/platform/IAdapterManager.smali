.class public interface abstract Lorg/apache/harmony/luni/platform/IAdapterManager;
.super Ljava/lang/Object;
.source "IAdapterManager.java"


# virtual methods
.method public abstract getAdapter(Lorg/apache/harmony/luni/platform/IAdaptable;Ljava/lang/Class;)Ljava/lang/Object;
.end method

.method public abstract hasAdapter(Lorg/apache/harmony/luni/platform/IAdaptable;Ljava/lang/Class;)Z
.end method

.method public abstract registerAdapters(Lorg/apache/harmony/luni/platform/IAdapterFactory;Ljava/lang/Class;)V
.end method

.method public abstract unregisterAdapters(Lorg/apache/harmony/luni/platform/IAdapterFactory;)V
.end method

.method public abstract unregisterAdapters(Lorg/apache/harmony/luni/platform/IAdapterFactory;Ljava/lang/Class;)V
.end method
