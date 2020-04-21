Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8920B1B1AB2
	for <lists+linux-riscv@lfdr.de>; Tue, 21 Apr 2020 02:28:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=FMzj+KBAT9oKczxa74v3DQRv9Cfu8gbIxOZJWY/KwN4=; b=rHh7aoDQzQnHtTlxVnTg613Uum
	rqR/gelNH+cG3DDyF/+c0fj1GUa0Uy8A7W3oCT59i4Pv0zWReMBD/vxWIfHWrjg+vY0+l2oCqI0YK
	DJXz8dHb6JiDyiFVSjntNrwzlQkcrb0fKHycFm7sVlQ8afWuKL06kd/lhUzfMnIf4G6Dj93Fb/qWZ
	7hAww4WsjZ+u23kSRNyfsICwWQCe+ypUSzDB5TFfgI2+n8JR9qTvmaEoOl0dGlvFV9W49G3xwKyWZ
	ydrl+k/UuFrKx5dilyCEEYZcDijAJm2UBSKcWBizCkwl1KkZr1dIK5LdifeVDNpSUNYigQTUd3/Xz
	lHivvkbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQgm3-00022K-Ba; Tue, 21 Apr 2020 00:28:27 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQgm0-0001yj-7o
 for linux-riscv@lists.infradead.org; Tue, 21 Apr 2020 00:28:25 +0000
Received: by mail-pl1-x643.google.com with SMTP id ay1so4602998plb.0
 for <linux-riscv@lists.infradead.org>; Mon, 20 Apr 2020 17:28:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cs.washington.edu; s=goo201206;
 h=from:to:cc:subject:date:message-id;
 bh=FMzj+KBAT9oKczxa74v3DQRv9Cfu8gbIxOZJWY/KwN4=;
 b=F5Ecnjii1wOD6Z8F6N/EQ+BJvmRcCDXykdLJXNecm3nPcHmSBK8LG/V4JXCAT7Cxqp
 2L9yQo5z9bM5Ftq6Sye8tV3ZsqCdsgQXBH3nSq0DSBdCoOXb9i8pPKoHRCmYHNiLy4T0
 E+RWpg//Wu7E6ucg7Vm0c4gvUqHngOsJU/um4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=FMzj+KBAT9oKczxa74v3DQRv9Cfu8gbIxOZJWY/KwN4=;
 b=syMW+Ka5w0Z9nj/5FKVWp9Lt+X2PRR1rUqWhaUHmRsIlCHHBlsjdFISLCt264YFtfw
 Outy8FUqueMi8FZZ3j/YwzzOLnFtLj9yRUD8EKOkBDOxEavJuw4jUtGW9xxDCHAMlHsw
 Zv6H+ti8l7/Ungtj7Sugo4NpqxvCJxWoFXQsHHBi0dcCwddiPnLSfawjXTqg6L7vsTxB
 uyGiYyWpzCaKj+jjAVjY1g2/rDm3Zvi5bMFPPTrXtisrlgi2wz3d0zUYDB6SwqSmjnr3
 fyCjpOfPWkYqSLneNGc2mgC4e+ZIxERY9UcGXvprJBSzjGPywJfN63Cq2103qxzIbZdv
 csxg==
X-Gm-Message-State: AGi0PuYLL/17Dwjt9TLVOtlRjxqybLiUmNzv6ORhgeWHWuEezLCMUZOQ
 C841VtBe9Vov0UW/EDmmmKbZQw==
X-Google-Smtp-Source: APiQypJfRL/P24IvYTwSBmOVCK9iHgVzsETnPpci6H5O5Yc64EM8WVFWpSkRtjhEl62+jhSjad3bFQ==
X-Received: by 2002:a17:90b:19c1:: with SMTP id
 nm1mr2367164pjb.73.1587428895331; 
 Mon, 20 Apr 2020 17:28:15 -0700 (PDT)
Received: from localhost.localdomain (c-73-53-94-119.hsd1.wa.comcast.net.
 [73.53.94.119])
 by smtp.gmail.com with ESMTPSA id f2sm547247pju.32.2020.04.20.17.28.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Apr 2020 17:28:14 -0700 (PDT)
From: Luke Nelson <lukenels@cs.washington.edu>
X-Google-Original-From: Luke Nelson <luke.r.nels@gmail.com>
To: bpf@vger.kernel.org
Subject: [PATCH bpf] bpf, riscv: Fix tail call count off by one in RV32 BPF JIT
Date: Mon, 20 Apr 2020 17:28:04 -0700
Message-Id: <20200421002804.5118-1-luke.r.nels@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_172824_279555_833AFE6E 
X-CRM114-Status: GOOD (  10.02  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Song Liu <songliubraving@fb.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Daniel Borkmann <daniel@iogearbox.net>, Luke Nelson <luke.r.nels@gmail.com>,
 =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 KP Singh <kpsingh@chromium.org>, Yonghong Song <yhs@fb.com>,
 linux-riscv@lists.infradead.org, Andrii Nakryiko <andriin@fb.com>,
 Martin KaFai Lau <kafai@fb.com>, Xi Wang <xi.wang@gmail.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This patch fixes an off by one error in the RV32 JIT handling for BPF
tail call. Currently, the code decrements TCC before checking if it
is less than zero. This limits the maximum number of tail calls to 32
instead of 33 as in other JITs. The fix is to instead check the old
value of TCC before decrementing.

Fixes: 5f316b65e99f ("riscv, bpf: Add RV32G eBPF JIT")
Signed-off-by: Luke Nelson <luke.r.nels@gmail.com>
---
 arch/riscv/net/bpf_jit_comp32.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/riscv/net/bpf_jit_comp32.c b/arch/riscv/net/bpf_jit_comp32.c
index 302934177760..11083d4d5f2d 100644
--- a/arch/riscv/net/bpf_jit_comp32.c
+++ b/arch/riscv/net/bpf_jit_comp32.c
@@ -770,12 +770,13 @@ static int emit_bpf_tail_call(int insn, struct rv_jit_context *ctx)
 	emit_bcc(BPF_JGE, lo(idx_reg), RV_REG_T1, off, ctx);
 
 	/*
-	 * if ((temp_tcc = tcc - 1) < 0)
+	 * temp_tcc = tcc - 1;
+	 * if (tcc < 0)
 	 *   goto out;
 	 */
 	emit(rv_addi(RV_REG_T1, RV_REG_TCC, -1), ctx);
 	off = (tc_ninsn - (ctx->ninsns - start_insn)) << 2;
-	emit_bcc(BPF_JSLT, RV_REG_T1, RV_REG_ZERO, off, ctx);
+	emit_bcc(BPF_JSLT, RV_REG_TCC, RV_REG_ZERO, off, ctx);
 
 	/*
 	 * prog = array->ptrs[index];
-- 
2.17.1


