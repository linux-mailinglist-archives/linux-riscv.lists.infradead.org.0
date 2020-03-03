Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC9D7177174
	for <lists+linux-riscv@lfdr.de>; Tue,  3 Mar 2020 09:45:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=HhImMESnIk5G03De6ZoGGNIO7yc/PY5jQTdLnsMrUjs=; b=HTP5SxShmxuIpxx2agkyef2Pxf
	910zWOcVe1kGYJhdKLkMsyJu3KfNlaP4njfkh03RlAb11+RoifWoQHbBTpeivwFTNCa7m5NC4puEu
	71hIE/+tAU00hwy+JmKuDinoX1+Tcs7IgnJOCZsXxulTNjpzSTjlXKO7dXkyEgI3liIgYdBwg1Qzt
	0zOmnHXqEkC2ODsCQPJ8gA/oishsukvbyqMXrEE+22Pt6+XeWPKRU1e1VdBTeSX5hTp9x+jp2tbbZ
	8CDaj8vlbKrnvJyVJYGaB77eKXRPzKXV6+xwjIOclGoldscMcG7wGMBPONtSKQZyB7EyqsyQq9f39
	yspiCVyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j93B2-0008Th-BY; Tue, 03 Mar 2020 08:45:20 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j93Ac-00073k-0E
 for linux-riscv@lists.infradead.org; Tue, 03 Mar 2020 08:44:55 +0000
Received: by mail-pj1-x1043.google.com with SMTP id cx7so1038946pjb.3
 for <linux-riscv@lists.infradead.org>; Tue, 03 Mar 2020 00:44:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=HhImMESnIk5G03De6ZoGGNIO7yc/PY5jQTdLnsMrUjs=;
 b=JGY0HWm+8kTJrxQqzQs2w4oLM+eJTU7oXXnBty8IZQ0NPHJXhEgYmX0yPbrkrpy15H
 TDTOh1EAj64R/BJzk/GI4EmkG8Vbay5vrel1fLjao+M5S43fola5WYKjHSzrd/qiCSmW
 plwkx9oK76m2MjELRqrU7Z0RKPBx+2AY1kkqKLlBWNNGF7B+IyuboKjU/LcNz+p6/8D3
 3VRbtWCNEUKnJFysK+eiqXy74/QarrR/GKLKyI6FtITXUksQnxahmCK/19xHocu9O5UM
 Oz5QO3aW/P0eE64llGrTxrjiFvWuPgTQtlSl2AzzRlFCxMu3Y23XmevU0rjbAvmxkRcu
 oyrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=HhImMESnIk5G03De6ZoGGNIO7yc/PY5jQTdLnsMrUjs=;
 b=CG3geoU99HazzwtXoCsC8QCYUy3hAltc3ptyWmgBFbd9Cu8pllXzvoU5yCMa5J6qiR
 grXyWZCZoOEf6goQt0XOhczgGnFINTLKh1zqsRxb7xTqTlqVGuCdJlQTqmOXffQTijE0
 juPkM5GTdXdwq087cJU+l/wSRjT+NuHJlntU/Buni7dJzUNxujrbt480hBc4rTIpuKrX
 88v8F9QS6MPsItgaxmuICDT1mRJ0uGraV+iYtbm2JKYwTFAp7FG5QIWnwymnKk1E66LW
 yGGcLMT88eqCtJikmfW7X+j1uMdJnBlL2m9wWep0inZmPBuI0NyfEGbSrurtUMdfJfGK
 GCwQ==
X-Gm-Message-State: ANhLgQ3ut7NdQm7aWW0rafY8QsncqZnm66uP9IKnX2iBZhYaD2A+3Dgf
 1c9PmLLfZHv0OV8+r8eaTJnLiJBC8OLL4w==
X-Google-Smtp-Source: ADFU+vtyCSuI5nXNsCPF9PWGYj6VQNyOBtNdqAhuNG5iy8zm/7ptmZxrLzrhcWbri5RcI0CkoUcmxw==
X-Received: by 2002:a17:902:fe16:: with SMTP id
 g22mr3143728plj.316.1583225093492; 
 Tue, 03 Mar 2020 00:44:53 -0800 (PST)
Received: from VincentChen-ThinkPad-T480s.internal.sifive.com
 (220-132-236-182.HINET-IP.hinet.net. [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id u4sm23282805pgu.75.2020.03.03.00.44.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 03 Mar 2020 00:44:53 -0800 (PST)
From: Vincent Chen <vincent.chen@sifive.com>
To: paul.walmsley@sifive.com,
	palmer@dabbelt.com
Subject: [PATCH 0/5] riscv: Add KGDB and KDB support
Date: Tue,  3 Mar 2020 16:44:36 +0800
Message-Id: <1583225076-25979-1-git-send-email-vincent.chen@sifive.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_004454_064392_70B8456F 
X-CRM114-Status: GOOD (  12.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Vincent Chen <vincent.chen@sifive.com>, linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This patch set implements required ports to enable RISC-V kernel to support
KGDB and KDB features. Because there is no immediate value in the RISC-V
trap instruction, the kernel cannot identify the purpose of each trap
exception through the opcode. This makes the existing identification
schemes in other architecture unsuitable for the RISC-V kernel. In order
to solve this problem, this patch adds the kgdb_has_hit_break() to kgdb.c
to help the RISC-V kernel identify the KGDB trap exception. In addition,
the XML target description was introduced in this patch set to enable KGDB
to report the contents of the status, cause and steal registers.
 
This patchset has passed the kgdbts test suite provided by Linux kernel on
HiFive unleashed board and QEMU.

Vincent Chen (5):
  kgdb: Add kgdb_has_hit_break function
  riscv: Add KGDB support
  kgdb: enable arch to handle more query packets
  riscv: Use the XML target descriptions to support system registers
    report
  riscv: Add SW single-step support for KDB

 arch/riscv/Kconfig               |   1 +
 arch/riscv/include/asm/Kbuild    |   1 -
 arch/riscv/include/asm/gdb_xml.h |  60 +++++
 arch/riscv/include/asm/kdebug.h  |  12 +
 arch/riscv/include/asm/kgdb.h    |  74 +++++++
 arch/riscv/kernel/Makefile       |   1 +
 arch/riscv/kernel/kgdb.c         | 467 +++++++++++++++++++++++++++++++++++++++
 arch/riscv/kernel/traps.c        |   5 +
 include/linux/kgdb.h             |  10 +
 kernel/debug/debug_core.c        |  12 +
 kernel/debug/gdbstub.c           |   6 +
 11 files changed, 648 insertions(+), 1 deletion(-)
 create mode 100644 arch/riscv/include/asm/gdb_xml.h
 create mode 100644 arch/riscv/include/asm/kdebug.h
 create mode 100644 arch/riscv/include/asm/kgdb.h
 create mode 100644 arch/riscv/kernel/kgdb.c

-- 
2.7.4


