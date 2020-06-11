Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 943121F6027
	for <lists+linux-riscv@lfdr.de>; Thu, 11 Jun 2020 04:50:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=jpm044JpBHIVrYGPHlmEFciQsFPwiMlmj0xEplKLAzo=; b=rEVFubjywnlyNc
	XkMqQv4pLIdgXzF/m5N5bYJA0Recluc1wDYC0xkP4byglQch42oOasaAtjnCUPZvKTuDXG5K23JMk
	QyCcrl/nuenddouutjHVjiuv48a6IsJ37cCJTSClw4iyLG2RsKYA+Z94l91RmKLOMfvJm/cl5oFsQ
	jIjSi7A93zU3I6YxP9eYYJa485iwkLfHLH/STB2wKxvgsAvK/Y7fwkXIeolHPpjKKiMimx3TnDduw
	MA+dHteVcK31ASncaHskUNGGc984xQSb1dHYaAVbnGaJXH3nr7xN3QYPa54/X2HxEzHy0LMOUhWH1
	F6fRcTTYescRj5tNV8OQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjDIK-0000l3-4X; Thu, 11 Jun 2020 02:50:20 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjDIF-0000gG-Bn
 for linux-riscv@lists.infradead.org; Thu, 11 Jun 2020 02:50:17 +0000
Received: by mail-pf1-x444.google.com with SMTP id s23so2012984pfh.7
 for <linux-riscv@lists.infradead.org>; Wed, 10 Jun 2020 19:50:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=jpm044JpBHIVrYGPHlmEFciQsFPwiMlmj0xEplKLAzo=;
 b=Vyokqfpbyj1aP1vXDGLBtllvB1JqGHqAok3iIGma42z9fpD6MksrQyukFo9CXxoSt3
 cjMRv8hGJl85jH1miHtYe3KEd+v+z6zLAkFNJGmhoEmkiK7Wg1ScFia/38/bH0lBjJKQ
 99oSqHmYkOElFE2OeNOXIkr1jkpgva0AfeRDq2rWG8QW9ODl3saIF0RY1ZUVU8T1AXBn
 Eq21QL54bcZuC/NI16HOorhYzmI5u+cGDXFuqAa/BHt2WhvL6Ir1MazM5FNRY9Xc6piP
 0rfJ5Hm5GLQAEVQAU45tT9c8KI4wXgGOldd4G0aPAlrQwOcz+Zu/fe+dqH2BHKd6KHnh
 PnlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=jpm044JpBHIVrYGPHlmEFciQsFPwiMlmj0xEplKLAzo=;
 b=Izr2sswfwQicSpLhjB9KpVX8dPxcB5atyraEb8j+UI8S+bvFdu3cq3b8tcZapQWEku
 E7tEfTQUv0VU7r75/Tf7scGmzFwVahuFcmE3HG/Y9VIwXO1fn5M2uUsGwsZNPIX99YOa
 PiRLShx1L8HFIc8lqwEQKeWbV0P6R10dIH2NCpUu17G4jKOs4fuM6YXPyCghRMHTMe98
 JS/7U00Lf1xI79XDoV4U5jY2Yn6pln4BEpslgcwYT5nvu72qo2v3swPVX++Qf756TIw6
 LOnBwBj857JJt0NhLbLlICiZQxe6yE9O7GmOG/Yuc1ehqmiZx3g8LcWswwtWqu3IHYLu
 fEDA==
X-Gm-Message-State: AOAM531DueL16kjjt+wHlOEr5eUiYnZT5NEyrGsAmvaGdSY4xS2CUpuf
 EBnumnYCF139BP7kSMghcqLcBg==
X-Google-Smtp-Source: ABdhPJxaFfA0GG4uPCtGt1Jlcj5TPmbm0GsJ1BSy9quLLZPADUkRBivP4hihA2/cAvX0nM2TCjH3WA==
X-Received: by 2002:a63:e34a:: with SMTP id o10mr4998429pgj.258.1591843812168; 
 Wed, 10 Jun 2020 19:50:12 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id w186sm1284437pff.83.2020.06.10.19.50.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Jun 2020 19:50:11 -0700 (PDT)
Date: Wed, 10 Jun 2020 19:50:11 -0700 (PDT)
X-Google-Original-Date: Wed, 10 Jun 2020 19:50:00 PDT (-0700)
Subject: Re: [PATCH v4 0/2] riscv: introduce vDSO common flow
In-Reply-To: <1591712089-12904-1-git-send-email-vincent.chen@sifive.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: vincent.chen@sifive.com
Message-ID: <mhng-e30f353d-a8ba-4517-8f8d-5ad333bb2dde@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_195015_479693_829B5F1E 
X-CRM114-Status: GOOD (  16.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: vincent.chen@sifive.com, linux-riscv@lists.infradead.org,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 09 Jun 2020 07:14:47 PDT (-0700), vincent.chen@sifive.com wrote:
> Even if RISC-V has supported the vDSO feature, the latency of the functions
> for obtaining the system time is still expensive. It is because these
> functions still trigger a corresponding system call in the process, which
> slows down the response time. If we want to remove the system call to
> reduce the latency, the kernel should have the ability to output the system
> clock information to userspace. This patch introduces the vDSO common flow
> to enable the kernel to achieve the above feature and uses "rdtime"
> instruction to obtain the current time in the user space. Under this
> condition, the latency cost by the ecall from U-mode to S-mode can be
> eliminated. After applying this patch, the latency of gettimeofday()
> measured on the HiFive unleashed board can be reduced by %61.
>
>
> change since v3:
> 1. Fix build warnings reported by kbuild system
>
> change since v2:
> 1. Fix build errors that occurred in the case of rv32 and nommu.
>
> change since v1:
> 1. Modify the permission of vdso_data to read-only
>
> Vincent Chen (2):
>   riscv: use vDSO common flow to reduce the latency of the time-related
>     functions
>   riscv: set the permission of vdso_data to read-only
>
>  arch/riscv/Kconfig                         |  4 ++
>  arch/riscv/include/asm/clocksource.h       |  7 +++
>  arch/riscv/include/asm/processor.h         | 12 +----
>  arch/riscv/include/asm/vdso.h              |  2 +
>  arch/riscv/include/asm/vdso/clocksource.h  |  8 +++
>  arch/riscv/include/asm/vdso/gettimeofday.h | 79 ++++++++++++++++++++++++++++++
>  arch/riscv/include/asm/vdso/processor.h    | 19 +++++++
>  arch/riscv/include/asm/vdso/vsyscall.h     | 27 ++++++++++
>  arch/riscv/kernel/time.c                   |  9 ++++
>  arch/riscv/kernel/vdso.c                   | 24 +++++++--
>  arch/riscv/kernel/vdso/Makefile            | 12 +++--
>  arch/riscv/kernel/vdso/clock_getres.S      | 18 -------
>  arch/riscv/kernel/vdso/clock_gettime.S     | 18 -------
>  arch/riscv/kernel/vdso/gettimeofday.S      | 18 -------
>  arch/riscv/kernel/vdso/vdso.lds.S          |  2 +
>  arch/riscv/kernel/vdso/vgettimeofday.c     | 25 ++++++++++
>  16 files changed, 213 insertions(+), 71 deletions(-)
>  create mode 100644 arch/riscv/include/asm/clocksource.h
>  create mode 100644 arch/riscv/include/asm/vdso/clocksource.h
>  create mode 100644 arch/riscv/include/asm/vdso/gettimeofday.h
>  create mode 100644 arch/riscv/include/asm/vdso/processor.h
>  create mode 100644 arch/riscv/include/asm/vdso/vsyscall.h
>  delete mode 100644 arch/riscv/kernel/vdso/clock_getres.S
>  delete mode 100644 arch/riscv/kernel/vdso/clock_gettime.S
>  delete mode 100644 arch/riscv/kernel/vdso/gettimeofday.S
>  create mode 100644 arch/riscv/kernel/vdso/vgettimeofday.c

Thanks, these are on for-next.

