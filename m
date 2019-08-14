Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EDE88CE4E
	for <lists+linux-riscv@lfdr.de>; Wed, 14 Aug 2019 10:24:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=GyD5SPWcmYmeY8xCzsYsIIk1PTPE/pWoeTWJZTzLN0A=; b=By2
	r7Xu7QzYoHFSJY01uDyDo/Ib5/jUulvZpt4RrKM20lDtcGK+tuGKPot1JCXf9gWUg8VzbQW5QKOx4
	BDJyFo7u4gb2fm+pijy7ZPh/xuaqPDl8mRGFy+qyLvCRvNi8YL8/7tlFGEn2uQlkGfjw2BqAKjyNd
	EDYCWKBYslmlJ4ncuHKD6SqmNvbeyNbdtFja6eFLuBC7A9ENgFdbbxO9EVGPx0UBKH8q5Uc54RNHZ
	rx3s330eBPnO6ZbJgSqLvegB+Zh/KVZ/6VKFsvXZTvokXu7gZGP+FqS+c5/0iDm7Rs5J8tPt8j8B5
	hwq0/jrJjdLu+0ElENFNWrFm7ISqgiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxoZe-0002IL-0T; Wed, 14 Aug 2019 08:24:02 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxoZa-0002HT-Bz
 for linux-riscv@lists.infradead.org; Wed, 14 Aug 2019 08:23:59 +0000
Received: by mail-pf1-x444.google.com with SMTP id o70so7806718pfg.5
 for <linux-riscv@lists.infradead.org>; Wed, 14 Aug 2019 01:23:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=rEnxligpiNBOZsMLUa2pNExp9uwlDBDh1X2nlxPgNEQ=;
 b=SHwQE8pQnfcqX2bqOvsQmD1HbXJdaoQyGKVRNZ6z+tUsJ4fLN8rXLNYxl+X0JlDsyK
 2kMaM/lMOc2xXiA/h9VnxbKLHQ2gWvjkoQ/Hxq3aTj9keLxc7+nlkxayPp6+KCRkxkBV
 MlTYkxHIXaoI/9rjFnQHyzaYAy3jiCv7KvwDgUCj5+yKqIHaMbr6PdF1YDF7xj18NIvR
 D76atVZQ8oLil0d+Z50nclSbSAebyq+kJHGoPCcS0jalYGtQ9gss3k2lavJdFFPo4cQE
 7zq2rpa2XGm7daqS70jw/TtoSV8CU6RV9FqTFHNOH/NtOczod4yYn7r6cju4xr0gbMeq
 6ujQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=rEnxligpiNBOZsMLUa2pNExp9uwlDBDh1X2nlxPgNEQ=;
 b=e7ke+Q9dIozR22XOGpJB9UwZ8yo3BlQmZjx77hDnVb2x3FRsItzF7ygeyxyXwAJGUu
 wQt4RY9en53MH0UrOsWXy8AkYFHRrKE0hBpsHrWxSSiLDLdnDWzv7l8BhorMy5FqV9N3
 HEG1Vf9BtzPZj3d+N9xckCacHFyD9C5yfnQAaQsMimtKOfxEIztYZLKnsn5xcIBCOShu
 LEFzfjoRHwe1BDIpxv6kKDxbjrET0QLPh/GsN+AvtFWFPiYN8pC0qO+r4ZMxX7oNqNJZ
 5y/oIR907elG+/6XPLwJNVA1lfKHmAhP3mpg5KKHn/3mEVm6s6+hmFAFbuTMEzl7cidK
 gb9Q==
X-Gm-Message-State: APjAAAUsB+y8akwCzW6z3AUR48tD09Jv2LeRAwH/9TXbf9/AFjUP5mvM
 v5DXDnZtBEkssPrqeImOgz5fnA==
X-Google-Smtp-Source: APXvYqz10BPXPgKiDc0RpVCnD3PYHGcpBN5kEMkQijEKA/0/TENqixTu5pwCdRQNUi28WT68mgnxxg==
X-Received: by 2002:a63:2c8:: with SMTP id 191mr37355432pgc.139.1565771037551; 
 Wed, 14 Aug 2019 01:23:57 -0700 (PDT)
Received: from localhost.localdomain (220-132-236-182.HINET-IP.hinet.net.
 [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id f205sm12359152pfa.161.2019.08.14.01.23.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 14 Aug 2019 01:23:56 -0700 (PDT)
From: Vincent Chen <vincent.chen@sifive.com>
To: Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@sifive.com>
Subject: [PATCH v2 0/2] riscv: Correct the initialized flow of FP and
 __fstate_clean()
Date: Wed, 14 Aug 2019 16:23:51 +0800
Message-Id: <1565771033-1831-1-git-send-email-vincent.chen@sifive.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_012358_468879_19DB3431 
X-CRM114-Status: UNSURE (   7.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Vincent Chen <vincent.chen@sifive.com>, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The following two reasons cause FP registers are sometimes not
initialized before starting the user program.
1. Currently, the FP context is initialized in flush_thread() function
   and we expect these initial values to be restored to FP register when
   doing FP context switch. However, the FP context switch only occurs in
   switch_to function. Hence, if this process does not be scheduled out
   and scheduled in before entering the user space, the FP registers
   have no chance to initialize.
2. In flush_thread(), the state of reg->sstatus.FS inherits from the
   parent. Hence, the state of reg->sstatus.FS may be dirty. If this
   process is scheduled out during flush_thread() and initializing the
   FP register, the fstate_save() in switch_to will corrupt the FP context
   which has been initialized until flush_thread().
In addition, the __fstate_clean() function cannot correctly set the state
of sstatus.FS to SR_FS_CLEAN. These problems will be solved in this patch
set.

Changes since v1:
- Remove unneeded braces
- Remove unneeded ifdef condition
- Make the correction for __fstate_clean() be a RC fix

Vincent Chen (2):
  riscv: Correct the initialized flow of FP register
  riscv: Make __fstate_clean() work correctly.

 arch/riscv/include/asm/switch_to.h |  8 +++++++-
 arch/riscv/kernel/process.c        | 11 +++++++++--
 2 files changed, 16 insertions(+), 3 deletions(-)

-- 
2.7.4

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
