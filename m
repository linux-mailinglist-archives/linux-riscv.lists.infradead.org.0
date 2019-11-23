Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A753F10811A
	for <lists+linux-riscv@lfdr.de>; Sun, 24 Nov 2019 00:39:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2vixyGL1jdpx4SfcdTGK4Xb7l+6Y2JMAZnyOGO5Ppkc=; b=m3zIdrh2LplNI9
	wtanBa4i9qYh70gHBKMjTanlfOKc6bfmPXKLgO15n1V8hs/2EvkNssmE3U9eyGCTMBfU8BPb2Xiqe
	XLeYT4vuTB6Z4dWl3KZ5UTAtXq4kVRkqN1OfAh6nC8NbqmhD4/yU96nMgQyWUnxmG1RGvXXFobgTp
	K5JjI0ND2PtTH1ohZp3D1QYjY1rXkPPfHSMfWXjmnkKpw8W7Yduit4qkspbPtkF5Jhf2CGsbylC8Y
	LpES1xH/Q7tKjmWphZHiF3+RYKLggEm6PBhSyxHjO2bCCH6Mrr9Mt8kZKsgeuJAt/ikvWf77zL2/4
	joJwa3/Oeh8Qyn97zFGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYezS-0002P0-BJ; Sat, 23 Nov 2019 23:38:58 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYezO-0002OX-6q
 for linux-riscv@lists.infradead.org; Sat, 23 Nov 2019 23:38:55 +0000
Received: by mail-io1-xd44.google.com with SMTP id x21so12145543ior.2
 for <linux-riscv@lists.infradead.org>; Sat, 23 Nov 2019 15:38:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=56zdBpxlclR0g1LjYAS1+32bVAGecBlra1y4WDc61ak=;
 b=S+TW1nKxE5gRiH0TPfNeT4yyprYSSApYNNurctsEcBCQsSqmNsRfTZlHBzYmsw7E0S
 QRk1VUsNgB8IeBSzwrihAhPgW4go96mZ7mQaDI6+T7nrCClTTycN7QJW5xPZ0cYem5hF
 1kALf0BBRfROJIb/sh4xSnXUkxSx3/qgo+P2MDl2Z/DxPS6B/1HYM5ajQEYq6b1vJPH7
 7xEg3fDb1D0d/lz6nDInR50lI2UDeGOJQOtlBQpbuYq7gbzSJaAiH68w1gI4dB5CM0bq
 qPuMTuyDLS+2WGo/S3Fq0uAUKvoVrka0cHKSiALFAZBkIS9hqNdSrs9o6NKDHff1aQ0U
 TBBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=56zdBpxlclR0g1LjYAS1+32bVAGecBlra1y4WDc61ak=;
 b=qHFEtvdOWz6Nx2D+lF1MpmNhiEfkCYo7Vi27sP9yHpZnJVyeWLSOBdQe+6BO75pQ4R
 laiGyICeycI9GaFlKp7E1x/CVOUzMuQcFJV6HnguYL7SKrGntc1SkIvnANesKIMf6jSS
 LKTx/hxPUs8PnyNG0Xq7WsMIFq8kMEDTz5D9jCWgm/CrrbV129wVp5KyfzPyqNKNF1bl
 eMeiH/jusbpvIX2X1aKnYanmBwAH/SenopBTsJkQqRTWhwIdJ/2wTmce/WcdQj52Y24U
 pGN6+eW8aovW/5UYmiZEPexP0gwieFmmBkGElVB/DJPsYetRFViAfjXug4LI5YUGzd/e
 SEXQ==
X-Gm-Message-State: APjAAAWRyG7KZZTUjSmzUyFL7i4P+Lmhm2mWD5lZtmwMxV8h5fxPaiir
 nPMocyIbSzchZMnGGOgb4676yQ==
X-Google-Smtp-Source: APXvYqwlp/VBmKTfbXYnwdw6P2u/JqwD2uFYCVpGOeBQfXAbCAE1DRvFvX7L5V0UpSEy3wwjtI/t8A==
X-Received: by 2002:a5e:d602:: with SMTP id w2mr16471010iom.94.1574552333070; 
 Sat, 23 Nov 2019 15:38:53 -0800 (PST)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id j18sm696555ili.84.2019.11.23.15.38.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 23 Nov 2019 15:38:52 -0800 (PST)
Date: Sat, 23 Nov 2019 15:38:50 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Matthew Wilcox <willy@infradead.org>
Subject: Re: [PATCH] Documentation: riscv: add patch acceptance guidelines
In-Reply-To: <20191123035827.GZ20752@bombadil.infradead.org>
Message-ID: <alpine.DEB.2.21.9999.1911231536300.14532@viisi.sifive.com>
References: <alpine.DEB.2.21.9999.1911221842200.14532@viisi.sifive.com>
 <20191123035827.GZ20752@bombadil.infradead.org>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191123_153854_261838_85B98654 
X-CRM114-Status: GOOD (  20.03  )
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
Cc: krste@berkeley.edu, aou@eecs.berkeley.edu, waterman@eecs.berkeley.edu,
 corbet@lwn.net, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 palmer@dabbelt.com, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Matthew,

On Fri, 22 Nov 2019, Matthew Wilcox wrote:

> On Fri, Nov 22, 2019 at 06:44:39PM -0800, Paul Walmsley wrote:
> >  Documentation/riscv/patch-acceptance.rst | 32 ++++++++++++++++++++++++
> >  1 file changed, 32 insertions(+)
> >  create mode 100644 Documentation/riscv/patch-acceptance.rst
> 
> Should this be linked into the toctree somewhere so it's findable
> on kernel.org?  Maybe add a line to Documentation/process/index.rst
> to include ../riscv/patch-acceptance.rst?

Does this updated patch contain what you had in mind?


- Paul

From: Paul Walmsley <paul.walmsley@sifive.com>
Date: Fri, 22 Nov 2019 18:33:28 -0800
Subject: [PATCH] Documentation: riscv: add patch acceptance guidelines

Formalize, in kernel documentation, the patch acceptance policy for
arch/riscv.  In summary, it states that as maintainers, we plan to
only accept patches for new modules or extensions that have been
frozen or ratified by the RISC-V Foundation.

We've been following these guidelines for the past few months.  In the
meantime, we've received quite a bit of feedback that it would be
helpful to have these guidelines formally documented.

Based on a suggestion from Matthew Wilcox, we also add a link to this
file to Documentation/process/index.rst, to make this document easier
to find.

Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>
Cc: Palmer Dabbelt <palmer@dabbelt.com>
Cc: Albert Ou <aou@eecs.berkeley.edu>
Cc: Krste Asanovic <krste@berkeley.edu>
Cc: Andrew Waterman <waterman@eecs.berkeley.edu>
Cc: Matthew Wilcox <willy@infradead.org>
---
 Documentation/process/index.rst          |  1 +
 Documentation/riscv/index.rst            |  1 +
 Documentation/riscv/patch-acceptance.rst | 32 ++++++++++++++++++++++++
 3 files changed, 34 insertions(+)
 create mode 100644 Documentation/riscv/patch-acceptance.rst

diff --git a/Documentation/process/index.rst b/Documentation/process/index.rst
index e2c9ffc682c5..9b8394eacea6 100644
--- a/Documentation/process/index.rst
+++ b/Documentation/process/index.rst
@@ -58,6 +58,7 @@ lack of a better place.
    magic-number
    volatile-considered-harmful
    clang-format
+   ../riscv/patch-acceptance
 
 .. only::  subproject and html
 
diff --git a/Documentation/riscv/index.rst b/Documentation/riscv/index.rst
index 215fd3c1f2d5..fa33bffd8992 100644
--- a/Documentation/riscv/index.rst
+++ b/Documentation/riscv/index.rst
@@ -7,6 +7,7 @@ RISC-V architecture
 
     boot-image-header
     pmu
+    patch-acceptance
 
 .. only::  subproject and html
 
diff --git a/Documentation/riscv/patch-acceptance.rst b/Documentation/riscv/patch-acceptance.rst
new file mode 100644
index 000000000000..2e658353b53c
--- /dev/null
+++ b/Documentation/riscv/patch-acceptance.rst
@@ -0,0 +1,32 @@
+.. SPDX-License-Identifier: GPL-2.0
+
+====================================================
+arch/riscv maintenance and the RISC-V specifications
+====================================================
+
+The RISC-V instruction set architecture is developed in the open:
+in-progress drafts are available for all to review and to experiment
+with implementations.  New module or extension drafts can change
+during the development process - sometimes in ways that are
+incompatible with previous drafts.  This flexibility can present a
+challenge for RISC-V Linux maintenance.  Linux maintainers disapprove
+of churn, and the Linux development process prefers well-reviewed and
+tested code over experimental code.  We wish to extend these same
+principles to the RISC-V-related code that will be accepted for
+inclusion in the kernel.
+
+Therefore, as maintainers, we'll only accept patches for new modules
+or extensions if the specifications for those modules or extensions
+are listed as being "Frozen" or "Ratified" by the RISC-V Foundation.
+(Developers may, of course, maintain their own Linux kernel trees that
+contain code for any draft extensions that they wish.)
+
+Additionally, the RISC-V specification allows implementors to create
+their own custom extensions.  These custom extensions aren't required
+to go through any review or ratification process by the RISC-V
+Foundation.  To avoid the maintenance complexity and potential
+performance impact of adding kernel code for implementor-specific
+RISC-V extensions, we'll only to accept patches for extensions that
+have been officially frozen or ratified by the RISC-V Foundation.
+(Implementors, may, of course, maintain their own Linux kernel trees
+containing code for any custom extensions that they wish.)
-- 
2.24.0.rc0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
