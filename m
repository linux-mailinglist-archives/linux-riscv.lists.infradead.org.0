Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03D8A130002
	for <lists+linux-riscv@lfdr.de>; Sat,  4 Jan 2020 02:40:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=p+aEtGvZStTHC748i1i28Ty2kT6MGPJhRV1hrUdmKEg=; b=BVN
	Ph7aDDBUcW03BDRKSAn/Q3qkIhIK1ohkO43A38T7DA0LYMFmN1C5PDd+FtcPiDy03wSXlUD0EdN0p
	x2MCf8OxfpVGz2EDtJCD3hEyBcvxQYdIrEtGNKufwHq6kNZhDQTKhaOchS5gJpQoGrLHaCUasG0xI
	gOzo0lf89MKtm+P0xnvi8by/1Lq55T0sx0l2nBdzm1Zkq+0ttScbMY48Q4j6KwtjpiTaH2RpLfob3
	IlJgce6G1fbPqVZnXPt9eZKIpZWTObs2ztop7BjAz+BiCoGxt/tnmZ2WWRy55YQQMhUCm+cbiohwc
	djiRroSB41CCTXliNCsFCbfA1TgT27g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inYQN-0001Nf-Qa; Sat, 04 Jan 2020 01:40:19 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inYQK-0001NE-1G
 for linux-riscv@lists.infradead.org; Sat, 04 Jan 2020 01:40:17 +0000
Received: by mail-il1-x144.google.com with SMTP id v69so38042132ili.10
 for <linux-riscv@lists.infradead.org>; Fri, 03 Jan 2020 17:40:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:message-id:user-agent:mime-version;
 bh=p+aEtGvZStTHC748i1i28Ty2kT6MGPJhRV1hrUdmKEg=;
 b=DdTUmNJNzy5afvjihoYOCyO8r92df2ViburJnJy+i8JQzvGeGwuYuInZsZynms5w7M
 u4BeFPjaAt/57JdqjiFc8k1ZkpaG1SpFN4KVxND46xBwj5s7+jUPaY4XlsGkM3rDStMx
 d8eP9f8837MDgHrMuU/hgWrUXXnyinuAxf6Jm62LRLjnp+vY/PogtuD1kT3RmyXTvA3i
 NX9R2S0KpgFEeMCQJJ9rXewTw6Vc2TTQFmh8uEKG87ga/G/npvR2umS5+GDyM70Uy+aj
 V3uhNgAo+Tr804pt70xnQWcKADWgcVn6w8prGzwp3ppQeMUUOuWhnfbHrf4hMVDftC+W
 RffA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:user-agent
 :mime-version;
 bh=p+aEtGvZStTHC748i1i28Ty2kT6MGPJhRV1hrUdmKEg=;
 b=BmJYGAlvWB4rtHetG/jXmagGaoYey1yXtV7Jr4VNCX8HSwqVYvSi/t5ou3B4SF/E57
 69Ea4jg1zNkp/sVEO/7madKRMk8SSCNJP0N2uUa4DMbq85AS/5kZwdA9am1l+2fbnKVu
 NauwBlIrVMK8p/aY2CAD7S3vUd5xdOazIHzqUgH12SPcW1cdVLh7Yx0mNhoyISNjMVys
 TvsViyHoCR3T1fU5ZZQs3TKdFWfhDir0+5/Jzzh5UHzCQ+ikItna7xnXXQw4Z07ZOm1g
 g5Y77ro1ZqeE87sgs+ieemwxnyBzKdXFWYuI7u+fUowhY0UG1QyuAmgp3CRx/cz6APGr
 5ApQ==
X-Gm-Message-State: APjAAAWVXEAxXbR4D/qKsxtCLwOPgd8PWZHxRPByVWNPRWNt9fD/UsQb
 KRcCxiGm/11BVtUpPioveAolr/LuBiA=
X-Google-Smtp-Source: APXvYqyMp321Ylu46R8IUF7IaH1YMOc8pagfSw6DeM7bdnF1DglzSua5LidZ/hkqj5YhWwxjpD8KYA==
X-Received: by 2002:a92:1553:: with SMTP id v80mr80196819ilk.49.1578102014700; 
 Fri, 03 Jan 2020 17:40:14 -0800 (PST)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id z15sm21439290ill.20.2020.01.03.17.40.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Jan 2020 17:40:14 -0800 (PST)
Date: Fri, 3 Jan 2020 17:40:12 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: linux-riscv@lists.infradead.org, corbet@lwn.net
Subject: [PATCH v3] Documentation: riscv: add patch acceptance guidelines
Message-ID: <alpine.DEB.2.21.9999.2001031738380.283180@viisi.sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_174016_121260_EC57902B 
X-CRM114-Status: GOOD (  15.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: krste@berkeley.edu, aou@eecs.berkeley.edu, waterman@eecs.berkeley.edu,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, willy@infradead.org,
 palmer@dabbelt.com, dan.j.williams@intel.com
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


Formalize, in kernel documentation, the patch acceptance policy for
arch/riscv.  In summary, it states that as maintainers, we plan to
only accept patches for new modules or extensions that have been
frozen or ratified by the RISC-V Foundation.

We've been following these guidelines for the past few months.  In the
meantime, we've received quite a bit of feedback that it would be
helpful to have these guidelines formally documented.

Based on a suggestion from Matthew Wilcox, we also add a link to this
file to Documentation/process/index.rst, to make this document easier
to find.  The format of this document has also been changed to align
to the format outlined in the maintainer entry profiles, in accordance
with comments from Jon Corbet and Dan Williams.

Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>
Cc: Palmer Dabbelt <palmer@dabbelt.com>
Cc: Albert Ou <aou@eecs.berkeley.edu>
Cc: Krste Asanovic <krste@berkeley.edu>
Cc: Andrew Waterman <waterman@eecs.berkeley.edu>
Cc: Matthew Wilcox <willy@infradead.org>
Cc: Dan Williams <dan.j.williams@intel.com>
Cc: Jonathan Corbet <corbet@lwn.net>
---
Queued for v5.5-rc through the arch/riscv tree.

 Documentation/process/index.rst          |  1 +
 Documentation/riscv/index.rst            |  1 +
 Documentation/riscv/patch-acceptance.rst | 35 ++++++++++++++++++++++++
 MAINTAINERS                              |  1 +
 4 files changed, 38 insertions(+)
 create mode 100644 Documentation/riscv/patch-acceptance.rst

diff --git a/Documentation/process/index.rst b/Documentation/process/index.rst
index 21aa7d5358e6..6399d92f0b21 100644
--- a/Documentation/process/index.rst
+++ b/Documentation/process/index.rst
@@ -60,6 +60,7 @@ lack of a better place.
    volatile-considered-harmful
    botching-up-ioctls
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
index 000000000000..dfe0ac5624fb
--- /dev/null
+++ b/Documentation/riscv/patch-acceptance.rst
@@ -0,0 +1,35 @@
+.. SPDX-License-Identifier: GPL-2.0
+
+arch/riscv maintenance guidelines for developers
+================================================
+
+Overview
+--------
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
+Submit Checklist Addendum
+-------------------------
+We'll only accept patches for new modules or extensions if the
+specifications for those modules or extensions are listed as being
+"Frozen" or "Ratified" by the RISC-V Foundation.  (Developers may, of
+course, maintain their own Linux kernel trees that contain code for
+any draft extensions that they wish.)
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
diff --git a/MAINTAINERS b/MAINTAINERS
index e09bd92a1e44..2987d1e16d20 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -14119,6 +14119,7 @@ M:	Paul Walmsley <paul.walmsley@sifive.com>
 M:	Palmer Dabbelt <palmer@dabbelt.com>
 M:	Albert Ou <aou@eecs.berkeley.edu>
 L:	linux-riscv@lists.infradead.org
+P:	Documentation/riscv/patch-acceptance.rst
 T:	git git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git
 S:	Supported
 F:	arch/riscv/
-- 
2.24.0


