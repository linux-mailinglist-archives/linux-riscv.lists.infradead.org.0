Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BDC76DCFB
	for <lists+linux-riscv@lfdr.de>; Fri, 19 Jul 2019 06:20:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AoHGVr6q9d3hJZSQT6qCODbYrsEniylymwTtx6OCalU=; b=JQRDNyadyyPNX/
	AypWbB93zISbv+k4rI+TBJHGwpADB1U7+P4y7kcRtwW970EFRAUo+YCyVARjxaOXl40ATwc5R6mL7
	21srhMsaA2Pk5nq2fvo6JPS6QFM4GnCIz6bam/e79J3ugWMrSOzF5gkBf26Tnhl57EoYjpTzIaUpa
	+WikMkwtgfkk2omavxI7mh3Z1tDdA4jJXux6lR/u34sKKmKGymHzPYAG8zrNwGgMiekGrQko92T8h
	QntBfazBo/IYPWxeGlQpRI5tDMZrK6nXuK7WX7yjZiO7vqI/A9Vexx5BRlDnpZtI5uQ+tj2una/Cq
	MYmXBuo8DLkUHwGXKIXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoKNN-0003VN-Dw; Fri, 19 Jul 2019 04:20:09 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoKNI-0002xk-Cn
 for linux-riscv@lists.infradead.org; Fri, 19 Jul 2019 04:20:06 +0000
Received: by mail-io1-xd41.google.com with SMTP id i10so55621057iol.13
 for <linux-riscv@lists.infradead.org>; Thu, 18 Jul 2019 21:20:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:message-id:user-agent:mime-version;
 bh=y7QcXz6snFzqEHX9oNiwROmLSfrbhKnVywQpaDFxKjU=;
 b=XBMc40+zE5hV9zvUK7QKYf84WeaZeVOkHEc+Ym7qahSCly2JPuO+wQ8TMLmOlquVIx
 ZOh7vrznORPoqN9Tk5Vy4ScOe7tXXzyVDkJmHmgSqcKTiL1JAUpA3JP47Z74JkvyMKoG
 Vru5wrI101h3kL1Fmmr22gglG4E6Gg7M9VEp7u6I4WoKhlt+iT9Hefknr+x05v9NdXh3
 Ol6fNQLRfAYllDwOtTVJulMat9PzO4gQsnKKY1BKcAINbgC1gOsqYc6NzQ5+wfbg8jar
 054ZQEV4ZYt2ryIpvydkJL2E2i9kvSUaTHhVznB3dTk8d0jWQU/WsRsAfLEAHW/cGuzf
 sZfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:user-agent
 :mime-version;
 bh=y7QcXz6snFzqEHX9oNiwROmLSfrbhKnVywQpaDFxKjU=;
 b=AHfglZ2Mp8mbln1nrE8xerZe+jhuCS1hCWlxm9oybxS4sedbZ+Set1QdOQB3xKdW6K
 d3XfcwSKgIVQY9g8GDpwEvVtpFtlX7X3053B8Z975603XgjnVY+jGTs+YsBUrqZ5kXYS
 bBQHj9uQChxsx3rD1X/smYsA5eGY3tIjEct9TdoyeRUKsiSDaxjsNWzFCfAm5ECOy/DG
 /Dot1PdQ59OTqf6XYKxe20u0/RDdQom1e/ZfoKlV7gQh+RaUkRHyjapqHLrnRT6Fqnga
 mQHn7lWpTfshTbYpGa33ZH9iiyI6ygv4l5MgUXRpXdUJCbyvpUKQaDPuhRqrzSuMAgXm
 m1Wg==
X-Gm-Message-State: APjAAAV3MKncKZaZIad7MzsfNWoIQqgrOObgmbFNTreXdjP694ZeHsml
 pwJ7LKKj9hPosEKCwxzsCXrj1ioVaQw=
X-Google-Smtp-Source: APXvYqzGiWfVK10x/o/hAhjT31ymV7flaSQ4nE5/whEi7UQaYFpREf+rTapypi5WrJkv8Azrv/2p7w==
X-Received: by 2002:a5d:9749:: with SMTP id c9mr48787103ioo.258.1563510003006; 
 Thu, 18 Jul 2019 21:20:03 -0700 (PDT)
Received: from localhost (67-0-62-24.albq.qwest.net. [67.0.62.24])
 by smtp.gmail.com with ESMTPSA id u4sm31205266iol.59.2019.07.18.21.20.02
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 18 Jul 2019 21:20:02 -0700 (PDT)
Date: Thu, 18 Jul 2019 21:20:01 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: linux-riscv@lists.infradead.org
Subject: [PATCH] riscv: enable sys_clone3 syscall for rv64
Message-ID: <alpine.DEB.2.21.9999.1907182118500.7083@viisi.sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_212004_479205_0D0860F4 
X-CRM114-Status: UNSURE (   7.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arch@vger.kernel.org, linux-kernel@vger.kernel.org,
 christian@brauner.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


Enable the sys_clone3 syscall for RV64.  We simply include the generic
version.

Tested by running the program from

   https://lore.kernel.org/lkml/20190716130631.tohj4ub54md25dys@brauner.io/

and verifying that it completes successfully.

Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
Cc: Christian Brauner <christian@brauner.io>
---
 arch/riscv/include/uapi/asm/unistd.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/riscv/include/uapi/asm/unistd.h b/arch/riscv/include/uapi/asm/unistd.h
index 0e2eeeb1fd27..13ce76cc5aff 100644
--- a/arch/riscv/include/uapi/asm/unistd.h
+++ b/arch/riscv/include/uapi/asm/unistd.h
@@ -18,6 +18,7 @@
 #ifdef __LP64__
 #define __ARCH_WANT_NEW_STAT
 #define __ARCH_WANT_SET_GET_RLIMIT
+#define __ARCH_WANT_SYS_CLONE3
 #endif /* __LP64__ */
 
 #include <asm-generic/unistd.h>
-- 
2.22.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
