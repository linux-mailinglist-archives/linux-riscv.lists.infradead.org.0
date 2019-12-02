Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB24A10F377
	for <lists+linux-riscv@lfdr.de>; Tue,  3 Dec 2019 00:33:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:In-Reply-To:Subject:From:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=7TAZdObr3Wsaq6AqNCQ3ocKAwtP5AdKLiKZrWMX2Qt4=; b=pNfUC17hwPg0QzteIAN70xsxu
	hL4xjppHUDTma7QJxnlljsyQPuZcbBU9XiI0URZRGezW6EUsJcZAoah4f2RMQEJBv8a0cN58DVNzD
	c1BZ9QAFMnaAOQU7bqA5cilmux6gOy97s6kL5EUrJV6uU8CT7pFAxERlBs8bcm06xsoTKkHxCqmvD
	OtUQ2HbmEW7pCfwWNRZKIH0ZdNM7yFGx7ucie0AfgPb6YKClefuMCXuzuLL7xT7syQzUgjXmymd3e
	54SQbr1Gt5nmtNkd1sT2A21tEHV6QvNu3ie2weQwzS5tP0iNg+FExcvwfIcniul9eGA8XFqRqUnvR
	xmCOakrqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibvBg-00041I-TI; Mon, 02 Dec 2019 23:33:04 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibvBY-0003qh-Al
 for linux-riscv@lists.infradead.org; Mon, 02 Dec 2019 23:32:57 +0000
Received: by mail-pf1-x444.google.com with SMTP id y206so671803pfb.0
 for <linux-riscv@lists.infradead.org>; Mon, 02 Dec 2019 15:32:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:subject:in-reply-to:cc:to:message-id:mime-version
 :content-transfer-encoding;
 bh=9v4dAOFWeUoulcUWR2FPbEilDOjTg0ynLEW3tZkwRN0=;
 b=a7pSC3syJXJ/RzJ6cFp/GYto5jHycfrj8u1u8lC8a2c3lRWcXzc/QGsA82Guq3sXiR
 CDBqqCdc7lWYT05yWdZXwT5bdktUuATDSQZh/jUMgHzioXWa5wEi8U+9wLMGGBoBQqw2
 wBHbd7jcbJ27qOYKhb0NXTTzqAHc5RkYLNss8J/YwWWsuZ+ZjdpU0qUbDvpyxjsX2TTA
 TozvZASd16ZIGAzt7VrBP38+PHaSpC4aKre4cehhYbIJVkK2wUPPpROE7s13YIs6ee2Z
 84werYyTJ4AneJirfQwTqHVKQ82Ix/Bj/ZPs6wNMdn9HAi3to5IizNAEusVUPlGZKSKv
 xczA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:subject:in-reply-to:cc:to:message-id
 :mime-version:content-transfer-encoding;
 bh=9v4dAOFWeUoulcUWR2FPbEilDOjTg0ynLEW3tZkwRN0=;
 b=GcVpQnh5I68+YObZ1rfTYP576Rz67bnB03cjyaCJlVXtzXg9w8nYV6dChfm4RxWpCR
 CUKaId+pvusB/o/Euzja5WVjb0SftVEeRhsK6gPleul/no5rDfg/CrC5hZsy9/4tfnQj
 qw03XeMAZvQe86woRuY3I1CGNklzkqyo6UDBZZE9YrlrTWUjJ5pZeOue1ek2kBhdFKOs
 JTRaheGrlTbZpl83Ex6nN0PCAUwmaz/YiyN5GlYL8lKTVPUxsH28ycYRDwnKK1fyLFcl
 FMphHGUEPwoXUrmInk0XsAvL7aZ6wqdCVkpNGv6Qx4A+C7d4l7FmCbn4XiOrEsP4JW84
 7aig==
X-Gm-Message-State: APjAAAUQlJXFLS1D3BKSAJ/fmW7+uznJEjoIj0OGnx8nUud50gcnZOSK
 YGbwQnyN37720OoG8zuLaodrhg==
X-Google-Smtp-Source: APXvYqzsJlkbx6bHlCnEaOUxEXBTCoTlfxjxE47Wgg1nbutvA7Rhpy0/MWfBFr4TYzQFuyYc/+hSQg==
X-Received: by 2002:a62:447:: with SMTP id 68mr1399108pfe.70.1575329575638;
 Mon, 02 Dec 2019 15:32:55 -0800 (PST)
Received: from localhost ([2620:15c:211:200:12cb:e51e:cbf0:6e3f])
 by smtp.gmail.com with ESMTPSA id 16sm665895pgm.86.2019.12.02.15.32.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Dec 2019 15:32:54 -0800 (PST)
Date: Mon, 02 Dec 2019 15:32:54 -0800 (PST)
X-Google-Original-Date: Mon, 02 Dec 2019 15:32:42 PST (-0800)
From: Palmer Dabbelt <palmerdabbelt@google.com>
X-Google-Original-From: Palmer Dabbelt <palmer@dabbelt.com>
Subject: Re: [PATCH 0/4] QEMU Virt Machine Kconfig option
In-Reply-To: <20191125132147.97111-1-anup.patel@wdc.com>
To: Anup Patel <Anup.Patel@wdc.com>
Message-ID: <mhng-2aaba21d-2b4a-45aa-9c76-809cb5b61e6c@palmerdabbelt.mtv.corp.google.com>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_153256_379207_546D5CAE 
X-CRM114-Status: GOOD (  10.77  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: aou@eecs.berkeley.edu, anup@brainfault.org, Anup Patel <Anup.Patel@wdc.com>,
 linux-kernel@vger.kernel.org, Atish Patra <Atish.Patra@wdc.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 25 Nov 2019 05:22:13 PST (-0800), Anup Patel wrote:
> This patch series primarily adds QEMU Virt machine kconfig opiton and
> does related RV32/RV64 defconfig updates.
>
> This series can be found in riscv_soc_virt_v1 branch at:
> https//github.com/avpatel/linux.git
>
> Anup Patel (4):
>   RISC-V: Add kconfig option for QEMU virt machine
>   RISC-V: Enable QEMU virt machine support in defconfigs
>   RISC-V: Select SYSCON Reboot and Poweroff for QEMU virt machine
>   RISC-V: Select Goldfish RTC driver for QEMU virt machine
>
>  arch/riscv/Kconfig.socs           | 24 ++++++++++++++++++++++++
>  arch/riscv/configs/defconfig      | 17 +++--------------
>  arch/riscv/configs/rv32_defconfig | 18 +++---------------
>  3 files changed, 30 insertions(+), 29 deletions(-)

Thanks.

LMK if you're going to spin a v2 with the updated commit message.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
