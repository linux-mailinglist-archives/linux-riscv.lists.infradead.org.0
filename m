Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE63983D06
	for <lists+linux-riscv@lfdr.de>; Tue,  6 Aug 2019 23:55:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ArmDXeNry/mckLQjPImDUuKvWckDuRzAJNIWA7yLJUk=; b=GCsTsPkUSBpzj0
	ZjLWEJP9quxQoUQnlNJ8JDtAw4XoHy46PqpWPjZF7YT95QxdgHS+2bcpAu8GVfNdJMpQut/fe2XSq
	LjB0evb7QMngaMwukoqTktcejTsTyZah7As8Zc+lf/Z+wScCTitKXqQ39OeRmo57BvX5n0o2WN06Z
	c602h/wnf7a5PHKnUmaQSj5oioD5EV0/8rh3Qf/BbqdWJ5eYQc0jhks1cCrMRbY5NWsPpNmArnKQd
	4GI3ZMIpv2y92q/sOrcms/DuHFM2hRG1P/RaD7BAsZdcYo22TVQ+YjKiBllT5voe5l/IuTJDk/hsg
	nvaFX5g0kDUP9SFusWfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv7Q2-0001Mq-D7; Tue, 06 Aug 2019 21:54:58 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv7Pz-0001Lr-7j
 for linux-riscv@lists.infradead.org; Tue, 06 Aug 2019 21:54:56 +0000
Received: by mail-ot1-x344.google.com with SMTP id q20so96270912otl.0
 for <linux-riscv@lists.infradead.org>; Tue, 06 Aug 2019 14:54:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=e0N0ZZ7gbRhdL+UK8EX1dMgG/3bO/cb7jXRFzExUL4k=;
 b=nC2RK+wjbSKbABdylLiYJMYOsFyEaY+iXsRPvSPywyopW3IGcH2lgAojRCNmpiStVL
 zZYaAtNAnpiMxnK1MpKnaUChgb3VqZ5jtmBfmbv6GIQXd4RHouKZ1RwGKGSFTwENK2Gu
 CdYxLb5F44BiYphtIhsfrdBL/XR3rPypAqjPWi4GEwj8Ql8mYTJvQFS/5l82Xbp2sQNU
 IJfybu+HiA8Rzx1717EYb+nbJVTaOUTfNhq4nq4vsiwoLg/bcTL6duKfQwWMfvzOxFzJ
 gC6aZfHv2hwKrTzOH0+vWrpHBmFbcJylo+X4DmM0Gl7/X40VjmJfhWM9fhWbHYSpk2XK
 crzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=e0N0ZZ7gbRhdL+UK8EX1dMgG/3bO/cb7jXRFzExUL4k=;
 b=Qe/0q+wLYxyQ1wRIodH5towdziWcSBGQSKg1GMF2U4NxRdHnUGxL/RM4i8QJMCchTm
 +itIaZtnMOUbIGJldPqu3kiAldwnA6bbgLZg3KVXqsvPZaew6okqO/ViWo0V+BnCamuJ
 Vla/JKLPho+35Lsnq4HdQoCB8nK4eviptOLI5bXkFA276C/xqEPs45cHMRzXOJm/rFH8
 TOmhb/lu5XV3FTfrE1fUyAQpss13pWwGw/JpLfMi4gCHvd+3SxOTymO9mHAOUhAwQua6
 QpV7IFrdX+BQXDXT1T3whajVj2IrFM5dbGdJojXt6nKm/hjKsmGHLk8iM+oW0B6K1uhn
 WHqg==
X-Gm-Message-State: APjAAAW3GgHHaWbs56Csrw8bbIorz9f/tIpeV+ZIClBFSrQOROh33rC6
 vZwpqtsBqeFMw2bgQ2sATCOQrA==
X-Google-Smtp-Source: APXvYqzPVNaDRTXzYBHYAB33LLYEDUma/TzBsb06XC691qDzmkvhh49XRDXuGu0MTeDKJrnOkXJJAg==
X-Received: by 2002:a6b:1ca:: with SMTP id 193mr6162600iob.264.1565128490422; 
 Tue, 06 Aug 2019 14:54:50 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 e26sm71330428iod.10.2019.08.06.14.54.49
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 06 Aug 2019 14:54:50 -0700 (PDT)
Date: Tue, 6 Aug 2019 14:54:49 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Atish Patra <atish.patra@wdc.com>, Anup Patel <anup.patel@wdc.com>
Subject: Re: [PATCH v4 2/4] RISC-V: Add riscv_isa reprensenting ISA features
 common across CPUs
In-Reply-To: <20190803042723.7163-3-atish.patra@wdc.com>
Message-ID: <alpine.DEB.2.21.9999.1908061452570.13971@viisi.sifive.com>
References: <20190803042723.7163-1-atish.patra@wdc.com>
 <20190803042723.7163-3-atish.patra@wdc.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_145455_280476_2B2AFF67 
X-CRM114-Status: GOOD (  11.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Albert Ou <aou@eecs.berkeley.edu>, Alan Kao <alankao@andestech.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org,
 Johan Hovold <johan@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Palmer Dabbelt <palmer@sifive.com>, linux-riscv@lists.infradead.org,
 Enrico Weigelt <info@metux.net>, Thomas Gleixner <tglx@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Anup, Atish,

On Fri, 2 Aug 2019, Atish Patra wrote:

> From: Anup Patel <anup.patel@wdc.com>
> 
> This patch adds riscv_isa integer to represent ISA features common
> across all CPUs. The riscv_isa is not same as elf_hwcap because
> elf_hwcap will only have ISA features relevant for user-space apps
> whereas riscv_isa will have ISA features relevant to both kernel
> and user-space apps.
> 
> One of the use case is KVM hypervisor where riscv_isa will be used
> to do following operations:
> 
> 1. Check whether hypervisor extension is available
> 2. Find ISA features that need to be virtualized (e.g. floating
>    point support, vector extension, etc.)
> 
> Signed-off-by: Anup Patel <anup.patel@wdc.com>
> Signed-off-by: Atish Patra <atish.patra@wdc.com>

Do you have any opinions on how this patch might change for the Z-prefix 
extensions?  This bitfield approach probably won't scale, and with the 
EXPORT_SYMBOL(), it might be worth trying to put together a approach that 
would work over the long term?


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
