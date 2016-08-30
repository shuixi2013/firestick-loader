.class public interface abstract Lcom/amazonaws/mobileconnectors/remoteconfiguration/Attributes;
.super Ljava/lang/Object;
.source "Attributes.java"


# static fields
.field public static final PREDEFINED_ATTRIBUTE_PREFIX:Ljava/lang/String; = "_"


# virtual methods
.method public abstract addAttribute(Ljava/lang/String;Ljava/lang/Boolean;)V
.end method

.method public abstract addAttribute(Ljava/lang/String;Ljava/lang/Double;)V
.end method

.method public abstract addAttribute(Ljava/lang/String;Ljava/lang/Integer;)V
.end method

.method public abstract addAttribute(Ljava/lang/String;Ljava/lang/Long;)V
.end method

.method public abstract addAttribute(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract getAllAttributes()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
.end method

.method public abstract getDouble(Ljava/lang/String;)Ljava/lang/Double;
.end method

.method public abstract getInt(Ljava/lang/String;)Ljava/lang/Integer;
.end method

.method public abstract getLong(Ljava/lang/String;)Ljava/lang/Long;
.end method

.method public abstract getString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract remove(Ljava/lang/String;)Ljava/lang/Object;
.end method
