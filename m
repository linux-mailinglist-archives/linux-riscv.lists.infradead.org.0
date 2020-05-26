Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F9F21E1BB8
	for <lists+linux-riscv@lfdr.de>; Tue, 26 May 2020 09:03:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Z0xKW5jGYiiw/3GeT46+0muUjmlt6YQxeB0UtKHbHyM=; b=iwc47VXxiWlbvYgAh+Iz33umr6
	8WgHd3nexNzZ16yu/zmMqMMmaOL/OTXxXvWVNku4QDiH0M9LbF16KguNekqV4lJQri9sEnUCjk8g5
	K7M48KPEgJhi26LzwUnAd5COBWPURwIyC6qnCInSIcLajGOXYwxy5KmqKHRpiQSvX5uNZiP0XayYF
	boArqamHnuVO7KjKP2NbeRFmy5U6bzXJ+i5D6cYp/rECjkOdcZtC+NcOS82pflQoiKHqzPxUf6B7x
	pAwBjzRC7Wq0zu+WKLvMjoeXYf7Zx/kDu0ps3+DGL+G3g7yFH/dTOluHbM23gYTTIqzL++w0XLdE7
	bU9dFhrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdTc8-0007Qg-H0; Tue, 26 May 2020 07:03:04 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdTbw-0007Hy-Lj
 for linux-riscv@lists.infradead.org; Tue, 26 May 2020 07:02:58 +0000
Received: by mail-pj1-x1043.google.com with SMTP id 5so827774pjd.0
 for <linux-riscv@lists.infradead.org>; Tue, 26 May 2020 00:02:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=Z0xKW5jGYiiw/3GeT46+0muUjmlt6YQxeB0UtKHbHyM=;
 b=Vv8F37mwKuXZ6y6Td16tf0OUUP4hiVqV1UO/3rkj623bgN1I9ccIiuIUReqYK0kEOl
 z95nqbfEpLcPYdvjItQhC9tHwQqtcoSb0qxCxd9zRpA16kGUzdsHLtI5EvyOCE0M7dQP
 Cp9EaLylJDiyIKi3uDP7V28Cn73JrLniaq0PcZ6uv29k8P0nNIf1KFCAgTo1UHZ7Lut7
 okCsi4st/LIAYpRmvAbbY2KSqfAa+zk28yH4vHKRdV05tcGY1okQvUqE35PdGGN0dhvU
 NpgvU9/QCVU9TNrdrbj2Hb0MXA5ZVakywr/sexsFoyef0xUozbuJwgD2ex+/kTxifgL/
 sgfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Z0xKW5jGYiiw/3GeT46+0muUjmlt6YQxeB0UtKHbHyM=;
 b=tw/Aq1sKWAK1dH5FXCDepx0sxS+dnaD1yuCwYF6PlZqLrAieFc6AnasnkZJHkRFc/E
 UGk8iEtzpW5TrXwcAkuSWkghc700XyWR0IefXm2tTLRPphgYUZvskV5zS8y99TNYi7eA
 552hm7rfIisIB2rxylbsG4Qc2J6Lug6Zy7Iy2oE2vSthiD4YcyPdg3ErQDLhZCcs02D/
 /Zto40j1h3eWU+8BJgR7/3I18qaOzTa/ooR3nw25hwhWAn5wxgPbxRwzDx3wPM8Z35ux
 SHXTw0NTF/6CA9vPCze4G63fkWC8YLbWR0UWvEZ3uhpay/MhflGsOu58WvBUTsD5ogPj
 ilHQ==
X-Gm-Message-State: AOAM533iDPn7NUubU6juEiFjrAlMN/iO8VBNlw89erfkXR9k/Qoyu4bx
 ddWEKRDFfAn3zCMoetwb1RloBjC0EZwc5w==
X-Google-Smtp-Source: ABdhPJxeYDGp3LFQVg6j6dk5cVoVcGPzcAKqKwzg4Z7E15ygv7v81Xe5OwKMQK1KH/AW0urpZT5vCQ==
X-Received: by 2002:a17:90a:aa8d:: with SMTP id
 l13mr25740072pjq.92.1590476571974; 
 Tue, 26 May 2020 00:02:51 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (114-34-229-221.HINET-IP.hinet.net. [114.34.229.221])
 by smtp.gmail.com with ESMTPSA id q34sm15167431pja.22.2020.05.26.00.02.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 May 2020 00:02:51 -0700 (PDT)
From: Greentime Hu <greentime.hu@sifive.com>
To: greentime.hu@sifive.com, guoren@linux.alibaba.com, vincent.chen@sifive.com,
 paul.walmsley@sifive.com, palmerdabbelt@google.com,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 oleg@redhat.com
Subject: [RFC PATCH v4 01/13] ptrace: Use regset_size() for dynamic regset
 size.
Date: Tue, 26 May 2020 15:02:30 +0800
Message-Id: <3700190a602a6d30fcbf76e1eea667e29a65c4c9.1590474856.git.greentime.hu@sifive.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1590474856.git.greentime.hu@sifive.com>
References: <cover.1590474856.git.greentime.hu@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_000252_709552_AB3A8261 
X-CRM114-Status: UNSURE (   8.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

It uses regset_size() instead of using regset->n and regset->size directly.
In this case, it will call the get_size() ported by arch dynamically to
support dynamic regset size case.

Signed-off-by: Greentime Hu <greentime.hu@sifive.com>
---
 kernel/ptrace.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/kernel/ptrace.c b/kernel/ptrace.c
index 43d6179508d6..6877105e1b1e 100644
--- a/kernel/ptrace.c
+++ b/kernel/ptrace.c
@@ -882,13 +882,18 @@ static int ptrace_regset(struct task_struct *task, int req, unsigned int type,
 	const struct user_regset_view *view = task_user_regset_view(task);
 	const struct user_regset *regset = find_regset(view, type);
 	int regset_no;
+	unsigned int size;
 
-	if (!regset || (kiov->iov_len % regset->size) != 0)
+	if (!regset)
 		return -EINVAL;
 
 	regset_no = regset - view->regsets;
-	kiov->iov_len = min(kiov->iov_len,
-			    (__kernel_size_t) (regset->n * regset->size));
+	size = regset_size(task, regset);
+
+	if ((kiov->iov_len % size) != 0)
+		return -EINVAL;
+
+	kiov->iov_len = min(kiov->iov_len, (__kernel_size_t) size);
 
 	if (req == PTRACE_GETREGSET)
 		return copy_regset_to_user(task, view, regset_no, 0,
-- 
2.26.2


