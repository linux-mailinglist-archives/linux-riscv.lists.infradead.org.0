Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 074EA19932D
	for <lists+linux-riscv@lfdr.de>; Tue, 31 Mar 2020 12:11:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=csmtkrkkAbdjV6T9mGVCcadIQKTYqskGmkUxceMKIBU=; b=TeURMREQB0FR+x
	yIJEKGbdZH98YSJBNDZHvGBsGDYE8oS5ZNXbGnb4ywRMW+HXT6iicUjjYlXXydahBiCRXRTu3VZI+
	zKWj57YL/7IIk87Rt1+AIAlXM2q99x2soY5R+n/hwF+V+ikIjqvtvQkEQdm9Pk++JjD6P3c6USz5z
	WW8vynV1qxBtfUbvSE9Ckp7Uzs6AbdFUEcP4X4RxhjVJ+BiYwmim4aJXqO+ZPZE+FW0XMYq6/tPQK
	OLTSF4XIwkivGP9xAiop/bm14jtmSnc80dkqAvbIVN73xFbhPGiKZ/gRA3+EOkq/QKmpXwNBeFXbI
	0BmuEUEbrcTUleDFzQ4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJDrM-00032v-KC; Tue, 31 Mar 2020 10:11:04 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJDrJ-00032Z-Lk
 for linux-riscv@lists.infradead.org; Tue, 31 Mar 2020 10:11:02 +0000
Received: by mail-pf1-x441.google.com with SMTP id h72so10130222pfe.4
 for <linux-riscv@lists.infradead.org>; Tue, 31 Mar 2020 03:11:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=csmtkrkkAbdjV6T9mGVCcadIQKTYqskGmkUxceMKIBU=;
 b=R6Jg645Ekhoa+9H2sclU0mGXjw1I9gI37D5bmWOunwlXVWOR25umHenRIYpp5VvaVd
 zcA3dD5WcrTkmIDeWIXG9cRVYfS5MAOSg++iD5npWGxhH00bZ51t6HNM1V7+bU7v+V4d
 BlPpwQJam7d4Mx/9G0XPi0bcWuHY8VnFLLN84cKY8psXRhG/Ua7XxQjr/n/vdE8l6/ev
 urf1CVBCnex1NW02kG5+dhF15YKk5S7U23r8N5LZ762KzSgInxbV03Xov0coy+lNMP9V
 3vNTmOzRYrFDvE85WSzLBozbxDKMP3YoXBbU1vMatIQuEOzahWXSCShJPIpDcrEpUsqW
 jUWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=csmtkrkkAbdjV6T9mGVCcadIQKTYqskGmkUxceMKIBU=;
 b=UUDbe4SUv4dxAucbTmmIgL2N9RxLYNcGAGRKyIiUhKc1aIb2H/jYWqxugXMOSb7Uu5
 jNWtG2VBkeDBJHMpKCDowedNYsxyTuHDvlAowNNJ92xFZwnNmpEd1wrbgnMIKIX3NxBq
 8TPHFuqMd7MVURuXbg/nXg0ekt/5LPUeJ6ilX9LCiVPWgKrUYN706Yr9MrxDMxyzwuz2
 MQABGkaWXetMTJSqxglFtu00b0BvEJGj9eiBalwoWL51+UaW87RaYKpqPqUKUQ0htj61
 f4p1hMPDhp4c7cEn1eUGE2+GuL9pWEKFGE17CprWkSldI9l2RLHziQBg+NMvvIMf/eJ9
 If+w==
X-Gm-Message-State: AGi0PuaaGqmvI5/0P/ApP7JVP6mQGdMz97Rvz4qqotON25LtEb85WiIY
 rB20fQP1BpPOicK/UCQEO2o=
X-Google-Smtp-Source: APiQypKiHHBSPaH2cLzNzRTC2404m7jq5F7xMao/oPIuL6IzPYmJYJXDbFSpcE6XHhJFs9EXH2dnSg==
X-Received: by 2002:a63:f117:: with SMTP id f23mr3325427pgi.44.1585649460961; 
 Tue, 31 Mar 2020 03:11:00 -0700 (PDT)
Received: from btopel-mobl.ger.intel.com ([192.55.55.43])
 by smtp.gmail.com with ESMTPSA id ck3sm1535258pjb.44.2020.03.31.03.10.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Mar 2020 03:11:00 -0700 (PDT)
From: =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>
To: netdev@vger.kernel.org, bpf@vger.kernel.org, ast@kernel.org,
 daniel@iogearbox.net
Subject: [PATCH bpf] riscv: remove BPF JIT for nommu builds
Date: Tue, 31 Mar 2020 12:10:46 +0200
Message-Id: <20200331101046.23252-1-bjorn.topel@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_031101_738822_AA65CF68 
X-CRM114-Status: GOOD (  10.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [bjorn.topel[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: hch@infradead.org,
 =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>,
 linux-riscv@lists.infradead.org, Damien.LeMoal@wdc.com,
 kbuild test robot <lkp@intel.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The BPF JIT fails to build for kernels configured to !MMU. Without an
MMU, the BPF JIT does not make much sense, therefore this patch
disables the JIT for nommu builds.

This was reported by the kbuild test robot:

   All errors (new ones prefixed by >>):

      arch/riscv/net/bpf_jit_comp64.c: In function 'bpf_jit_alloc_exec':
   >> arch/riscv/net/bpf_jit_comp64.c:1094:47: error: 'BPF_JIT_REGION_START' undeclared (first use in this function)
       1094 |  return __vmalloc_node_range(size, PAGE_SIZE, BPF_JIT_REGION_START,
            |                                               ^~~~~~~~~~~~~~~~~~~~
      arch/riscv/net/bpf_jit_comp64.c:1094:47: note: each undeclared identifier is reported only once for each function it appears in
   >> arch/riscv/net/bpf_jit_comp64.c:1095:9: error: 'BPF_JIT_REGION_END' undeclared (first use in this function)
       1095 |         BPF_JIT_REGION_END, GFP_KERNEL,
            |         ^~~~~~~~~~~~~~~~~~
      arch/riscv/net/bpf_jit_comp64.c:1098:1: warning: control reaches end of non-void function [-Wreturn-type]
       1098 | }
            | ^

Reported-by: kbuild test robot <lkp@intel.com>
Signed-off-by: Björn Töpel <bjorn.topel@gmail.com>
---
 arch/riscv/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 8672e77a5b7a..bd35ac72fe24 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -55,7 +55,7 @@ config RISCV
 	select ARCH_HAS_PTE_SPECIAL
 	select ARCH_HAS_MMIOWB
 	select ARCH_HAS_DEBUG_VIRTUAL
-	select HAVE_EBPF_JIT
+	select HAVE_EBPF_JIT if MMU
 	select EDAC_SUPPORT
 	select ARCH_HAS_GIGANTIC_PAGE
 	select ARCH_WANT_HUGE_PMD_SHARE if 64BIT
-- 
2.20.1


