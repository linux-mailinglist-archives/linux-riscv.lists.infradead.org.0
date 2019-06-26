Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27F695738D
	for <lists+linux-riscv@lfdr.de>; Wed, 26 Jun 2019 23:23:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dGrQcNiBh4qIk3yPGHtqjdFwkQxw1JRt2FxWhVi1ruQ=; b=fwOP2eDvWOSrRF
	SwIOcRbwD17mNwwVsWIWSb5Ph0x8NL6CQeeU2Rbk1D5aepV6BEgQKcNvlcBt45qxEUg43+iGxvAdZ
	k9w3G02VgVyX5rHrIIBetu96PZAGbyLTjI/shJwrh3XChp2WpyeEy0IWWa2uwxznVUnyYsvDp+0vR
	T/I/Py6BxK7nf1hgHIu2o3VBQEIuXCAG5sCzRlKje+7K8ojHfeHttbH+IgZ1nD1zffu4r4wfP32/g
	VsjQmHvqTrMOIlIJcnl6yZD9o1n1w/yEL436MtYMqHY7K9iHLd/OvlDJ6Wj6gMS3oeGJm3um+J5XA
	oE1quBloTx4ne5B7t69g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgFO3-00021t-Ed; Wed, 26 Jun 2019 21:23:27 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgFO0-00021S-2G
 for linux-riscv@lists.infradead.org; Wed, 26 Jun 2019 21:23:25 +0000
Received: by mail-io1-xd44.google.com with SMTP id u13so81586iop.0
 for <linux-riscv@lists.infradead.org>; Wed, 26 Jun 2019 14:23:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=XgHVVh1iwQlYOWPtBpGRVOxMwDek9WmdQZnI0nvo5lI=;
 b=e5QEQhKBazNUkOTeeik1glbub3qI5Xxx4Y0LUQhAdOVNdgtYFqR0SH8KhrjwxNH1e7
 qnX/OyYz+qiUuX7+JvN6Am7S7S2D8kj8wMQcVTu7hbpqBFnUoX4Si758pnyTJUeNXGby
 aQOeSsO9o1G3iz1qfVCY6QH+g4pHkbsRcQQ2lfR0fFgEAM9BoAI54AnQoGHgr0dnFx/9
 cITyW4elC4WQrR/hYc1uGeWJ/6cbdFhzTI75w/TKN8JmPXnQgb8XLNnhKONy9nMoVwXK
 5T3avA7/bwF7n3rqZNNQhVNT6v8RV4BOASCXu9+kcKs2N+MrMB+9Re4wq0f+Y/pY7ZPb
 hmNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=XgHVVh1iwQlYOWPtBpGRVOxMwDek9WmdQZnI0nvo5lI=;
 b=DqZAMHCxmsKVxXgf6sMZsITokGUo9PZtWNbZHMsMZKOUaE8nPfIKpYUyhnm7DCRPxs
 1nKfixVhtBqZ9G2Le9I9XjTa9T+UtAMe+yZd6THau+qHf+XLo/hiXHfgsy/kjzVh3/nF
 ZYASrj51MJWigwOnlGTpmZLJ+ohFX43/v/glxXaaLZMYJGFyFuXPLzItMkSjJPNxWMzz
 EVtNyIHAwZP/vsDX5fTOSZXlX/yOLJWjov0hZ5vF0YgJiO+YxGp7/1YjIXjCqbtxbODB
 z2lvkndItEuKo9uHtqrlDXzJwn98whLyDCE06Stlhg+thMqyrrQ9bBkrhELu09RnQ608
 5hFg==
X-Gm-Message-State: APjAAAVrJTSSHBehixPAGTXZ65Zqnucz1LdaDDnBH85tgouInwIIvwb2
 fobUJz1erhYcNPwOQ+xMwzM52Q==
X-Google-Smtp-Source: APXvYqw+ux+dOgT6Py/okDOcg4PhOLYcdrOTgEAK7EFsrAfTu0dYtrYWNmFKFatZQ46wQ6kdXTnCYQ==
X-Received: by 2002:a6b:e00b:: with SMTP id z11mr322758iog.27.1561584203005;
 Wed, 26 Jun 2019 14:23:23 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 b8sm302011ioj.16.2019.06.26.14.23.22
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 26 Jun 2019 14:23:22 -0700 (PDT)
Date: Wed, 26 Jun 2019 14:23:21 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH] dt-bindings: riscv: resolve 'make dt_binding_check'
 warnings
In-Reply-To: <CAL_Jsq+r08p7ZSt=2XMfR5eZna26wKvG6j-7aBa2Cxbbg6hCHw@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.9999.1906261421170.23534@viisi.sifive.com>
References: <alpine.DEB.2.21.9999.1906260829030.21507@viisi.sifive.com>
 <CAL_JsqJs6MtvmuyAknsUxQymbmoV=G+=JfS1PQj9kNHV7fjC9g@mail.gmail.com>
 <alpine.DEB.2.21.9999.1906261325290.23534@viisi.sifive.com>
 <CAL_Jsq+r08p7ZSt=2XMfR5eZna26wKvG6j-7aBa2Cxbbg6hCHw@mail.gmail.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_142324_141783_7A4E911F 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: linux-riscv@lists.infradead.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 26 Jun 2019, Rob Herring wrote:

> Sorry, I guess the indentation change threw me off...
> 
> For fixing the dtc warnings:
> 
> Reviewed-by: Rob Herring <robh@kernel.org>

Thanks, I've queued the following patch for v5.2-rc.

Will address the schema-related issues in separate patches.


- Paul


From: Paul Walmsley <paul.walmsley@sifive.com>
Date: Wed, 26 Jun 2019 08:19:29 -0700
Subject: [PATCH] dt-bindings: riscv: resolve 'make dt_binding_check' warnings

Rob pointed out that one of the examples in the RISC-V 'cpus' YAML
schema results in warnings from 'make dt_binding_check'.  Fix these.

While here, make the whitespace in the second example consistent
with the first example.

Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
Cc: Rob Herring <robh@kernel.org>
Reviewed-by: Rob Herring <robh@kernel.org> # for fixing the dtc warnings
---
 .../devicetree/bindings/riscv/cpus.yaml       | 26 ++++++++++---------
 1 file changed, 14 insertions(+), 12 deletions(-)

diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Documentation/devicetree/bindings/riscv/cpus.yaml
index 27f02ec4bb45..f97a4ecd7b91 100644
--- a/Documentation/devicetree/bindings/riscv/cpus.yaml
+++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
@@ -152,17 +152,19 @@ examples:
   - |
     // Example 2: Spike ISA Simulator with 1 Hart
     cpus {
-            cpu@0 {
-                    device_type = "cpu";
-                    reg = <0>;
-                    compatible = "riscv";
-                    riscv,isa = "rv64imafdc";
-                    mmu-type = "riscv,sv48";
-                    interrupt-controller {
-                            #interrupt-cells = <1>;
-                            interrupt-controller;
-                            compatible = "riscv,cpu-intc";
-                    };
-            };
+        #address-cells = <1>;
+        #size-cells = <0>;
+        cpu@0 {
+                device_type = "cpu";
+                reg = <0>;
+                compatible = "riscv";
+                riscv,isa = "rv64imafdc";
+                mmu-type = "riscv,sv48";
+                interrupt-controller {
+                        #interrupt-cells = <1>;
+                        interrupt-controller;
+                        compatible = "riscv,cpu-intc";
+                };
+        };
     };
 ...
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
