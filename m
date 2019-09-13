Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA3ECB2601
	for <lists+linux-riscv@lfdr.de>; Fri, 13 Sep 2019 21:27:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:MIME-Version:References:
	In-Reply-To:Message-Id:Date:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b665+ps2dwKc/YUZoSkx4ReY9kLkGddbeOVcB8yYjMk=; b=H1kgf/1axRGRz0
	Qzm58bGn9zTPBfwdCxD/k82LLp8WuSrEpM7LputN7NyXh87QOtREd2DgmqmeUqPj7hu8iyabfDcWY
	ABxmFf0BFreNNSWeyU2FOc+hSSr1CDUN+khQew/1pRK4AE6nQ1+0z6e+GwMRBRJeH2TrdgZERZOHB
	TvhYCvA1IXS0eDdC1vg5wwf0KiKZjNWbZmaYc5Pc82zcrjMit1BuOb4cMtDaxsDIBRPK6Ex/vh0XX
	UJ7Ihslk1BR6N+VGwBBofji7vFaVfjcxicQECfafQAF7YGyHr7OhfcACFLWwN/ReUAJ5PEzF/iIfR
	Oz7ZJpW97VDlF8qE3ZsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8rES-0003UP-4r; Fri, 13 Sep 2019 19:27:48 +0000
Received: from mail-pl1-f196.google.com ([209.85.214.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8rEO-0003Tq-7S
 for linux-riscv@lists.infradead.org; Fri, 13 Sep 2019 19:27:45 +0000
Received: by mail-pl1-f196.google.com with SMTP id 4so13650320pld.10
 for <linux-riscv@lists.infradead.org>; Fri, 13 Sep 2019 12:27:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding:cc:from:to;
 bh=xRy8tgqECP/7yjr3NZhDqgx63nTD8je9wSJ9Ypp6rmY=;
 b=ZJyqw2/DacGkL2FPl5+DhC/FTGkoeeyd9qFfYJ6zqENyMd3VnmhG3sqAPAdiWZZbR3
 nNOX1aSU1dpVV58DXdrk2Ua33/x+oXCEDWobSI3XR0i4VV5gTyl6opzeZLNeIsmaou9M
 cWfmdgJ4DkPSKTP0XtYldG2GTLYdC+BcBVz31AmprUxes/Ao49F15/TKUVW2QeE1Ezse
 pWEjuT0tE5xAUxxQvGvqddln4sJ9cf8enn3oXUWspG+E4QvGXtq2eLZ/VIOanJieb9wV
 ZgStdom5MsxK6WellDf5ZjYsVcoB1r4xqt/fSazgMP85THnCi6OGV4N8Vd9DKujWrFC1
 YikA==
X-Gm-Message-State: APjAAAVYFgBh17UNVZgsi1Wf6bFSUbRBIWBJ+yjGBZBuz5Q0Q5mBDa59
 ZhsjIi+UbTDXL+cliik3pcRoVAMHuufLig==
X-Google-Smtp-Source: APXvYqwyubhTK+NtNEdUSRAA07Jq1LUvNYtXedUpwkJ4Zv1VVc9/mN2GFyMW4ru5mZpYcCFTeIX+dA==
X-Received: by 2002:a17:902:b48c:: with SMTP id
 y12mr36619081plr.161.1568402863075; 
 Fri, 13 Sep 2019 12:27:43 -0700 (PDT)
Received: from localhost (amx-tls3.starhub.net.sg. [203.116.164.13])
 by smtp.gmail.com with ESMTPSA id z12sm47192310pfj.41.2019.09.13.12.27.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Sep 2019 12:27:42 -0700 (PDT)
Subject: [PATCH 1/4] Documentation: riscv: boot: We're not compatible with
 arm64
Date: Fri, 13 Sep 2019 12:24:30 -0700
Message-Id: <20190913192433.4316-2-palmer@sifive.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190913192433.4316-1-palmer@sifive.com>
References: <20190913192433.4316-1-palmer@sifive.com>
MIME-Version: 1.0
From: Palmer Dabbelt <palmer@sifive.com>
To: linux-riscv@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_122744_264972_5B7B5245 
X-CRM114-Status: GOOD (  10.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.196 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.196 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Palmer Dabbelt <palmer@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The documentation for our bootloader claims that it can be made
compatible with arm64, but that's not true.  There are some differences
between our format and arm64:

* We've used the first 32 bits of their 64-bit "res2" as a version number,
  which we're currently setting to non-zero.
* We're using their "res4" field as our magic number.
* We're treating their magic number as our "res3" field, which nominally
  contains a flag for big endian systems already.  This can't get set, so we
  should just drop it -- it's also not described what the flag means.

This patch removes the claim that our header can be made compatible with
arm64.

Signed-off-by: Palmer Dabbelt <palmer@sifive.com>
---
 Documentation/riscv/boot-image-header.txt | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/Documentation/riscv/boot-image-header.txt b/Documentation/riscv/boot-image-header.txt
index 1b73fea23b39..77e8e505bc41 100644
--- a/Documentation/riscv/boot-image-header.txt
+++ b/Documentation/riscv/boot-image-header.txt
@@ -21,9 +21,8 @@ The following 64-byte header is present in decompressed Linux kernel image.
 	u32 res3;		  /* Reserved for additional RISC-V specific header */
 	u32 res4;		  /* Reserved for PE COFF offset */
 
-This header format is compliant with PE/COFF header and largely inspired from
-ARM64 header. Thus, both ARM64 & RISC-V header can be combined into one common
-header in future.
+This header format is compliant with PE/COFF header and largely inspired by,
+but not compatible with, the ARM64 header.
 
 Notes:
 - This header can also be reused to support EFI stub for RISC-V in future. EFI
-- 
2.21.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
