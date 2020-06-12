Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 153031F746D
	for <lists+linux-riscv@lfdr.de>; Fri, 12 Jun 2020 09:10:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pbP82gUL18C1Fla9shgiQQ97uS+492J9jEgfpwVcbPY=; b=gYyosmByLysmk7QRqJzAvSkuYZ
	bUKDAnQyGaxXjSredODI/GoM2CiyC9TPkiNWS+Vp2IGMRMdNoxMueYZuYy+rFLVn2x0UsCzE+le6U
	JReXvZWbiTyOldHbFCzvPw+FhE8nujQu0xKL+u3rZ454x7esl8yqhtcE0DKMydJ8FRZePRuHNIfQo
	j7XDeJHfLc+Fy95BSlf7ZKbtGlugJ5tgb6+0cIj0LCeZuDbL/Pt23civayGIyQGl0etObBnr4bOwA
	X1Mkwaf+zRp3CUjlDM65j/+s7haHnAnosOuceHbMLmuRf2cR0GJYmVGGOt7UriTb0I+9uwEGX5pQ2
	zCjyCePA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjdps-0005Wq-2Z; Fri, 12 Jun 2020 07:10:44 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjdpb-0005Em-Em
 for linux-riscv@lists.infradead.org; Fri, 12 Jun 2020 07:10:28 +0000
Received: by mail-pg1-x544.google.com with SMTP id e9so3704536pgo.9
 for <linux-riscv@lists.infradead.org>; Fri, 12 Jun 2020 00:10:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=pbP82gUL18C1Fla9shgiQQ97uS+492J9jEgfpwVcbPY=;
 b=OFiDcEYWxQE3WkBK3dTvh348Jh2eoGWIzY5+cfmABqwb4g9kCFVGZIM9AlCnv/9Q4w
 b1QHy35qJGWGkZzFRlEo3wz1VFv3YEkzl4ypBsfEEpldy7BHJoozzE9WyJcWaKMuD+CB
 1kt+dzz2ZiLJt2ntDrB7ezZdqkR0kec032PVhQljIxRVHF89Ah+Uerk5E9XeNAYUU+Lh
 D9VNWWwbZdAmy4VGcNiMbAaYcqwlKCCjfVQR9ZTXm93aAg4gSkK/hFWdC/+TcA33ViGi
 4PeliW1MnMFo2qlbw3xTD3UUSmjEibBSBbaGbMQ3+/0QcRVTDsgPKpHq4dhrLRPezY5q
 LczA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pbP82gUL18C1Fla9shgiQQ97uS+492J9jEgfpwVcbPY=;
 b=luWDOpzP6s6U03fXzDU6ZEzGYCowjsTl/BpTyvOzhaiaYEMHhpwBkHD2XXIwNZhJdU
 nj8tGq3W9+Sa1XHWuaFOGZi7c/IlBYQo/724CQOJgMLL4UGrsNdjqpl2Yn4/gM+8DyFw
 UK7Z1EdD9ly6aHtSeUqJ6W09OzLHNNTYAcDGJTo4/hNqcB2ald6busdfgngunh32Q8XW
 05BWwTziY71sI1QlgVZ2P9YK3fkD2s/IsDjMPFXBeyhJjJU+z9XUlRnoAVFA9yKeflSt
 aUCDUkyrgg3cvPYpCXDqW/Csv9NWG7LhDHa27Jt5VvK2RcmKyavP86gxeLhce2t7tdo7
 1hrw==
X-Gm-Message-State: AOAM533to5l3UOS5HiaGIDuwtlt4fUo3/zFebDckd7q8yJ7vSWCR/vl+
 o3+kcJEHFBZzXQESIbkb6y2BlrVqJtGvdQ==
X-Google-Smtp-Source: ABdhPJzYsgrvRY/e0uV567qf3OJr/AS7IFAJducWNceLl4M2iwG28zBHaJD4Zo9jtBYytldPZjj34A==
X-Received: by 2002:aa7:9a9c:: with SMTP id w28mr9821650pfi.295.1591945825946; 
 Fri, 12 Jun 2020 00:10:25 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (114-34-229-221.HINET-IP.hinet.net. [114.34.229.221])
 by smtp.gmail.com with ESMTPSA id d2sm4336919pgp.56.2020.06.12.00.10.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Jun 2020 00:10:25 -0700 (PDT)
From: Greentime Hu <greentime.hu@sifive.com>
To: greentime.hu@sifive.com, oleg@redhat.com, guoren@linux.alibaba.com,
 vincent.chen@sifive.com, paul.walmsley@sifive.com,
 palmerdabbelt@google.com, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 07/13] riscv: Add has_vector/riscv_vsize to save vector
 features.
Date: Fri, 12 Jun 2020 15:09:56 +0800
Message-Id: <02932e625077902209ab9967735607f6054cd4d6.1591344965.git.greentime.hu@sifive.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <cover.1591344965.git.greentime.hu@sifive.com>
References: <cover.1591344965.git.greentime.hu@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_001027_559711_32F1BF5D 
X-CRM114-Status: UNSURE (   8.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This patch is used to detect vector support status of CPU and use
riscv_vsize to save the size of all the vector registers. It assumes
all harts has the same capabilities in SMP system.

[guoren@linux.alibaba.com: add has_vector checking]
Signed-off-by: Greentime Hu <greentime.hu@sifive.com>
Signed-off-by: Guo Ren <guoren@linux.alibaba.com>
---
 arch/riscv/kernel/cpufeature.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
index c8527d770c98..9b02d8b069e3 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -16,6 +16,10 @@ unsigned long elf_hwcap __read_mostly;
 #ifdef CONFIG_FPU
 bool has_fpu __read_mostly;
 #endif
+#ifdef CONFIG_VECTOR
+bool has_vector __read_mostly;
+unsigned long riscv_vsize __read_mostly;
+#endif
 
 void riscv_fill_hwcap(void)
 {
@@ -73,4 +77,12 @@ void riscv_fill_hwcap(void)
 	if (elf_hwcap & (COMPAT_HWCAP_ISA_F | COMPAT_HWCAP_ISA_D))
 		has_fpu = true;
 #endif
+
+#ifdef CONFIG_VECTOR
+	if (elf_hwcap & COMPAT_HWCAP_ISA_V) {
+		has_vector = true;
+		/* There are 32 vector registers with vlenb length. */
+		riscv_vsize = csr_read(CSR_VLENB) * 32;
+	}
+#endif
 }
-- 
2.27.0


