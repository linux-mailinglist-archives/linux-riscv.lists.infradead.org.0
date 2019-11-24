Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0098E108151
	for <lists+linux-riscv@lfdr.de>; Sun, 24 Nov 2019 02:00:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UM5Z0Vx1rYuXe1B2r0Big3JVCuZEcPmiMCrlCBLqmIo=; b=i1B4YENZ4kzQuB
	rzixyLjXrsE8KpiEaV6zb0yYeVG+Gy3Ok+TOAmRRct6dN20LlM9T5BXL453j5VgPuSl31FZO+SckE
	V93VEkClNBXVNaliniznszD4l68ZCToeRfzgJpaPSF2NVVzvd4Q7HVKfYrnNJTDtaw/8PKgD1hjgw
	nqLKi3n1Q0Q/yYGOP+AHkL3yyFG4TK0X7TNS5dCE2UoDPHCsqRCYIKoeTBhVptc4ENKenNiTHViQx
	V5oZIx0R+Ie9+C2jFlPQnzRA6E7wyYHw48CtmtEkyxogrXh2ZJUPctDjFrcfN6046IkhaKJro3Mde
	WQZwCZJPz5W0YcjGnbHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYgFq-0001B3-4y; Sun, 24 Nov 2019 00:59:58 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYgFm-0001Ai-Io
 for linux-riscv@lists.infradead.org; Sun, 24 Nov 2019 00:59:56 +0000
Received: by mail-io1-xd43.google.com with SMTP id z193so12261819iof.1
 for <linux-riscv@lists.infradead.org>; Sat, 23 Nov 2019 16:59:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:message-id:user-agent:mime-version;
 bh=qAmHrIF6xrd+Ev/ZPd2jpsaSN5NNND47POTTXZp6Ekg=;
 b=VT21x1jcllGEam/V7V5IvqPFqhNL9nRAD0tgo62hVEU/bjvap3+gtELTd7j/68MaxL
 EsJdV4roOUC0eeUSTGyC4TCRuezGVILOXS/XV7GjY3KBfnDcnqJAtOEgQJbaI/6V030S
 4IZ7I+MrSWwqtIJaXtW4D3/0p9ul7reCG7gJvrvOy7edBhad1Qnlo3YQIaY4rCUZp+ih
 rcA6Z/4MzTIWB538pv/YwM/yjqENHYafnJsi4q1jYx0SMDK5JEIamLEL20yO7g9sXunN
 0aDmzhzLjjHc/oqMHNBf6cMGCXQ0WGAzAI3ycNP3OUNtN80iNmLU41HNxVR4VrFgT/oA
 iVHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:user-agent
 :mime-version;
 bh=qAmHrIF6xrd+Ev/ZPd2jpsaSN5NNND47POTTXZp6Ekg=;
 b=DCyOSY8RTnQ2Ud7iyAfLFwfUiiJH/tc0sjRUZogLSNvK+EJ7q9/aDhO97bikvSgxdU
 umL7bKn8RKq54PDF1/Db/tGmA7L7COaPNl2hZ4aAN02fhJSZy3DiypdHyaKpvdHeItMA
 RY2k89ETK5lRaDGq7GGeqgSp5b5HAc/63gQwbyU9bJQ+N5Iyywj+BzHXlk/hCqyCFMGu
 wEV/lMJRawL0+ke+I/5RQd7rdGe4banfExqCciq1m5K+ZOAUMN0wKICrQi7DoQKX9SfJ
 B1lpAdEiVNaiMCqZgC9xL7pkGF6SLHLw14LcxN+Nc4VQNJyuVijcFYohHu/ZEGbwwJv3
 mUCg==
X-Gm-Message-State: APjAAAU5OeRDLP+EcH5z0ktdhktb0px1bOd3PZHZ44CDisTJGHyHs3UV
 tRYkNwdM1C/c6sZsWif09qj/u82LDv0=
X-Google-Smtp-Source: APXvYqxWFVccHTUrwWRlgAFEb+PyLPIHXb8aV2R7KgIElNIZV9rCXV4NJYcvrFQNcFuhtpdS9M+w6A==
X-Received: by 2002:a6b:9302:: with SMTP id v2mr11426097iod.12.1574557192848; 
 Sat, 23 Nov 2019 16:59:52 -0800 (PST)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id h16sm642955iog.27.2019.11.23.16.59.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 23 Nov 2019 16:59:51 -0800 (PST)
Date: Sat, 23 Nov 2019 16:59:49 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: linux-riscv@lists.infradead.org, corbet@lwn.net
Subject: [PATCH v2] Documentation: riscv: add patch acceptance guidelines
Message-ID: <alpine.DEB.2.21.9999.1911231655360.490@viisi.sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191123_165954_828367_7F64F016 
X-CRM114-Status: GOOD (  17.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
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
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, willy@infradead.org,
 palmer@dabbelt.com, dan.j.williams@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
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
with comments Jon Corbet and Dan Williams.

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
Hi Jon, could you ack this if you're happy with it so we can merge it 
through the arch/riscv tree?  Otherwise, if you would like to take it 
instead, please just let us know.  - Paul

 Documentation/process/index.rst          |  1 +
 Documentation/riscv/index.rst            |  1 +
 Documentation/riscv/patch-acceptance.rst | 35 ++++++++++++++++++++++++
 3 files changed, 37 insertions(+)
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
-- 
2.24.0.rc0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
