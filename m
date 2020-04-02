Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1063019BE3C
	for <lists+linux-riscv@lfdr.de>; Thu,  2 Apr 2020 10:56:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=h09wq+dScd3G1lPfYna5Eel+LXgpSjdYtjatbyrFm9Y=; b=MMZg+ykGrR6UlulmiO3CnJmMCL
	vKRrnJ40ptoRg+tN8+EGgnvz0kRErviQneSGw1idQ6i7EzI/wtYCz2g78SfJrme6SggY+oSitvoKQ
	ZlZ6hdp5Fawp5GAYon82RorxkqSY/F/JN0MZu2HEQsHNQVeVeoeoRptn9c9em8cDW08p72tzSQSOQ
	vMiVJPYZiOHE6CVa80AoyUK18gzzrcjMY0kTRCM/yprkplkyP31tNR9pz33QVNRYEZJv/xO3XYWft
	X86vX9/xrc4j1dmKU2gGyPC0sT9uMrSrN6qoMtLxTHZ/m87XzZQdjTCZJWUO8eWHgn17X6scmtJ74
	GSc8q1rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJve3-0004Vf-9t; Thu, 02 Apr 2020 08:56:15 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJve0-0004Ul-5D
 for linux-riscv@lists.infradead.org; Thu, 02 Apr 2020 08:56:13 +0000
Received: by mail-wr1-x441.google.com with SMTP id j17so3125446wru.13
 for <linux-riscv@lists.infradead.org>; Thu, 02 Apr 2020 01:56:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=h09wq+dScd3G1lPfYna5Eel+LXgpSjdYtjatbyrFm9Y=;
 b=ToyxyR6+tOkJxOTHMZv3d5Qb5+mQdfAOof0Vp8dfanGw8N76L7Huem7/hA7fdphMPS
 HGqdvYzXRv86MFBimMv05fkMfaEKTugmYcDLdWlUw/ny+vDi+SqxVhym19IXMfGC+wcB
 TcmKMFniB0pqLJU6VUzLedGpy2W60Yxs+WtTK+Nqgp06K+D4N+K4nBh0dpeJopANlCc+
 cqa7qv4GNoIBODZxs5gDqwapCqnkxHbibY+wj+1BpnkzK815iAJJLbXh+ESDxSmnYhor
 sTfW8+l07QY2T5l0WzSg6sMhyJU2SSyITsE46M+fpv2JdLH6YxhJ2VJZjKQT2tBQNDPN
 BJPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=h09wq+dScd3G1lPfYna5Eel+LXgpSjdYtjatbyrFm9Y=;
 b=HQvDiQ7hzgCwWLADwxvx5F3FtB5DmsZnxsDdndIk/2U3n/DhGOdP/V21sAAb53jPws
 No3Sr+WgBLUUTNck6q5emh62nMmbn5ZgaLZOajtfy604gKN0/wAloJ+IQdSOwOIKd2CP
 SCjS3DKd38JoAq/LEre0D0WdOCat/ngdAdkmzDrIDkcGHowIIm6ua6gCE8/n4v3O0RcK
 HIioob8ycnY6C8fzP9wv8QvymOIRcZM8VfOwfykQRMw1yUCD30DEBktuU2Sc9Bi2F0vy
 BajYc9GU8beZgVHyiq5yRyqEhnz3g13xaY5et/3G8Wq0vjf6FTzLQtaEvbOX7npkaXv7
 3slw==
X-Gm-Message-State: AGi0PuYs3C4ENyb4WkWY9wbTdL7g6aeoB24TxSKpAUOSw2opV0za6uY9
 YcY2CsnEsuA9+8qRj6oY/aJEXqUQCjiwxA==
X-Google-Smtp-Source: APiQypKl86CrZn5pUtD9lMTnWvTthMdnWBaQefQSi+3SzDQqpRPQowm6dU88P08O/2Oe9p1b5nQkTQ==
X-Received: by 2002:a5d:6b8b:: with SMTP id n11mr2259268wrx.379.1585817768538; 
 Thu, 02 Apr 2020 01:56:08 -0700 (PDT)
Received: from localhost.localdomain ([2a02:a58:8532:8700:29b9:31c4:8247:2806])
 by smtp.gmail.com with ESMTPSA id a13sm6584160wrh.80.2020.04.02.01.56.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Apr 2020 01:56:07 -0700 (PDT)
From: Ilie Halip <ilie.halip@gmail.com>
To: linux-riscv@lists.infradead.org
Subject: [PATCH] riscv: fix vdso build with lld
Date: Thu,  2 Apr 2020 11:55:58 +0300
Message-Id: <20200402085559.24865-1-ilie.halip@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_015612_226702_38770124 
X-CRM114-Status: UNSURE (   9.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ilie.halip[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Ilie Halip <ilie.halip@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 Mao Han <han_mao@c-sky.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

When building with the LLVM linker this error occurrs:
    LD      arch/riscv/kernel/vdso/vdso-syms.o
  ld.lld: error: no input files

This happens because the lld treats -R as an alias to -rpath, as opposed
to ld where -R means --just-symbols.

Use the long option name for compatibility between the two.

Link: https://github.com/ClangBuiltLinux/linux/issues/805
Reported-by: Dmitry Golovin <dima@golovin.in>
Signed-off-by: Ilie Halip <ilie.halip@gmail.com>
---
 arch/riscv/kernel/vdso/Makefile | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/riscv/kernel/vdso/Makefile b/arch/riscv/kernel/vdso/Makefile
index 33b16f4212f7..19f7b9ea10ab 100644
--- a/arch/riscv/kernel/vdso/Makefile
+++ b/arch/riscv/kernel/vdso/Makefile
@@ -41,7 +41,8 @@ SYSCFLAGS_vdso.so.dbg = -shared -s -Wl,-soname=linux-vdso.so.1 \
 $(obj)/vdso-dummy.o: $(src)/vdso.lds $(obj)/rt_sigreturn.o FORCE
 	$(call if_changed,vdsold)
 
-LDFLAGS_vdso-syms.o := -r -R
+# lld aliases -R to -rpath; use the longer option name
+LDFLAGS_vdso-syms.o := -r --just-symbols
 $(obj)/vdso-syms.o: $(obj)/vdso-dummy.o FORCE
 	$(call if_changed,ld)
 
-- 
2.17.1


