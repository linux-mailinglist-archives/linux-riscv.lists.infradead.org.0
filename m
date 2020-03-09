Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E9FC17D92B
	for <lists+linux-riscv@lfdr.de>; Mon,  9 Mar 2020 07:00:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=J641+pmCG4P/KzNqvlVegOoARTlmRLCArI/HwOPcSyU=; b=U9J4pUAy061B23
	PcZUC/WCtIQwijth6CGn7PJDG1yTRHFiQXNdBZ1kLc6nYiFxpuSdOuBonu2VIbIiYE5oLJwLi3PmQ
	xmzdFXsnWU9oCZ377aHoSZMFos9MCeMZQLPRF8sGUS2PFt9bKl0oT1omSLycSamfg1YzQrS7lg8Rt
	EJoY0QKnkRgb4gFnck83Z7Iw1CnnLCzfbYIyZY4u0PDZI2xvZ9rn5bItPr6nW19CAC/rVr4FAoij/
	/vgWLfeyF8poxeK/kOVHP5tmQ0UasBjs6bLBcXcOLYumD398+qAsYeZYhZ5ZX1PQDhqn13k7tth/S
	UznPQdmsgAc5oDPmQIEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBBSX-000166-1T; Mon, 09 Mar 2020 06:00:13 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBBSR-0000sr-GY
 for linux-riscv@lists.infradead.org; Mon, 09 Mar 2020 06:00:11 +0000
Received: by mail-pg1-x542.google.com with SMTP id h8so4202101pgs.9
 for <linux-riscv@lists.infradead.org>; Sun, 08 Mar 2020 23:00:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=J641+pmCG4P/KzNqvlVegOoARTlmRLCArI/HwOPcSyU=;
 b=M4uq1PcwZF9oBu5Eumvw8Qor++aHOQ8pdQ1wmNCuHNJABIvRpgn4C2+KYGiG5wRd6c
 HDXJ1YaaK1np7U5dObuwPfwt+mK4T2uumKFGMdfoPuxiA0w1ovZWxPH6x4Yj2r81n53c
 lMLwIwzPgU1jwSCIXMMeZMzJYNbxnTS1HS2DfNtLSs2loxnQj6onW1yBkUapxX9MAZjS
 sinUnk9/hUmg5K0Se1EWTYM5GVOeEZtGYhanL02O3yVEcSie2Lpy9X4rHx5ANBnXKVLU
 uH4N032D76VRpuFuTSVx7JBQ4CKY8eFEl5Xj8QA7GPhvcRU+uSkfh76aPuSMkDVzAEtz
 ywtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=J641+pmCG4P/KzNqvlVegOoARTlmRLCArI/HwOPcSyU=;
 b=hwXqp8Mkt8LaBBS3PQZ71UfyJEUJdbfnB6mqQ6VSSnpn5qDIim2fIW49tKITopPjjG
 VKrBmRs0oSD10iWLkRw6wfL1C8vPF1mpY4TSLiNXuZhlumm0F3F82HUwNH6fqtP9IPQs
 p3bJc4mBILPKShPBdS8MSR5IiVrpxY2EAfYpOEZwJ2CsDXg38SExsYUJIcCwv1d56Cl9
 wFk4JaIKawieRjLQQHmDO6Exs8JmsdlIeXWT0ocZdk9TCnEsAH6f4FRxAfs1BgIyQnCy
 3xvEPgyH/cmPhjZk0jL4WQun8wtaogkp4oahmCMSiIO9+usTnT7/3VzzVKZwQv0ANW3Y
 JYkQ==
X-Gm-Message-State: ANhLgQ1A40RatLEpIyzzyxBr+HfV0pl9u6DkGFxheWPInHsb6Fa3QqNC
 jyI5MIbR0iey+sZR9gNBDvedsVMgtzOwzg==
X-Google-Smtp-Source: ADFU+vuQ6KDS1JZLA6PWSQKvf8eTB8YWO9jsqA803PeJGmFrWmcjnQzj9qy6SnlB2i22H92mLzPSkA==
X-Received: by 2002:a62:16d0:: with SMTP id 199mr14848586pfw.238.1583733606460; 
 Sun, 08 Mar 2020 23:00:06 -0700 (PDT)
Received: from VincentChen-ThinkPad-T480s.internal.sifive.com
 (220-132-236-182.HINET-IP.hinet.net. [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id nh4sm3033061pjb.39.2020.03.08.23.00.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 08 Mar 2020 23:00:05 -0700 (PDT)
From: Vincent Chen <vincent.chen@sifive.com>
To: paul.walmsley@sifive.com, palmer@dabbelt.com,
 mathieu.desnoyers@efficios.com
Subject: [PATCH V2 0/3] riscv: add support for restartable sequence
Date: Mon,  9 Mar 2020 13:59:49 +0800
Message-Id: <1583733592-22873-1-git-send-email-vincent.chen@sifive.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200308_230007_572942_105BE2AC 
X-CRM114-Status: UNSURE (   8.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Vincent Chen <vincent.chen@sifive.com>, linux-riscv@lists.infradead.org,
 linux-kselftest@vger.kernel.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Add RSEQ, restartable sequence, support and related selftest to RISCV.
The Kconfig option HAVE_REGS_AND_STACK_ACCESS_API is also required by
RSEQ because RSEQ will modify the content of pt_regs.sepc through
instruction_pointer_set() during the fixup procedure. In order to select
the config HAVE_REGS_AND_STACK_ACCESS_API, the missing APIs for accessing
pt_regs are also added in this patch set.
  
The relevant RSEQ tests in kselftest require the Binutils patch "RISC-V:
Fix linker problems with TLS copy relocs" to avoid placing
PREINIT_ARRAY and TLS variable of librseq.so at the same address.
https://sourceware.org/git/gitweb.cgi?p=binutils-gdb.git;a=commit;h=3e7bd7f24146f162565edf878840449f36a8d974
A segmental fault will happen if binutils misses this patch.

Patrick Stählin (1):
  riscv: add required functions to enable HAVE_REGS_AND_STACK_ACCESS_API

Vincent Chen (2):
  riscv: Add support for restartable sequence
  rseq/selftests: Add support for riscv

Changes since v1:
1. Use the correct register name to access pt_regs


 arch/riscv/Kconfig                        |   2 +
 arch/riscv/include/asm/ptrace.h           |  29 +-
 arch/riscv/kernel/entry.S                 |   4 +
 arch/riscv/kernel/ptrace.c                |  99 +++++
 arch/riscv/kernel/signal.c                |   2 +
 tools/testing/selftests/rseq/param_test.c |  23 ++
 tools/testing/selftests/rseq/rseq-riscv.h | 622 ++++++++++++++++++++++++++++++
 tools/testing/selftests/rseq/rseq.h       |   2 +
 8 files changed, 782 insertions(+), 1 deletion(-)
 create mode 100644 tools/testing/selftests/rseq/rseq-riscv.h

-- 
2.7.4


