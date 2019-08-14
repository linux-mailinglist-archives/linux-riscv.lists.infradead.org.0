Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9947D8C774
	for <lists+linux-riscv@lfdr.de>; Wed, 14 Aug 2019 04:24:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z6q9ofnkY3xnG9MzJ/FN5yxvJepCh0HxxrGWMo6ezAg=; b=Bfk0kN0jGx0CJ3
	eccNVMSneePlaitlZTwkQMyTa4HS0PoJd4kSaiUk/Z/e0DegqY+6uZtmFLS9nlORQA/E0NIKOXOo7
	h9uIP2zuWWOscHWBlKZqJYteqsovHVe93/O7Z8duNV491D+kF6jwMxWr+uth7zKgXUG6bi/1NYp5M
	k0SL7Gp0qwb3KH3mTGQMgU9v2YJ3rrZ5a4BOebIx9BhRC9Z2aEPyioO0VlPcw+yl08cLCiGPpEEPh
	/XGRbNaHA7E2b40fcv6B7xlXI0osDpXpCYgMG2IL23SDht23+BjbH9dkN9zHCC6Fa9AB2wCZxn3t5
	DWMfutaSErMMpLAPPKRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxixc-0008Vy-IN; Wed, 14 Aug 2019 02:24:24 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxixZ-0008V7-QZ
 for linux-riscv@lists.infradead.org; Wed, 14 Aug 2019 02:24:23 +0000
Received: by mail-oi1-x242.google.com with SMTP id m206so70796765oib.12
 for <linux-riscv@lists.infradead.org>; Tue, 13 Aug 2019 19:24:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=1G/a7WS8pUpL1zmvbKTHzrkVwD487e3W+2smn5ktODc=;
 b=hjIYO+1dYGPbiBq+dHbXBz3TuAYU415ba+1qYeiXmxFN4NqMFXVq7AezPzQ5RozDKt
 OhVMOWSsix2AGx/5/KosEclzeVG+q4u4QX6T9v01GB2WbUHzhz+qKUgSqqvElDNcxguA
 QAdWWDM0D9Fj4YUN2+SKnPEtgzLmRpQ3y6nT6JZdgsFTmheqoPdPSl710HrUWFxn1xx2
 3sxXG13GhNUL+0YVJq/Fz2comXRXfon8+AUK8elZg51t2o8dQcKuUAKho0OPCl9ISl/l
 LSkGWZOSVuTWk5+OCzWwwN5CH7GdzBhxogTwKdH9DHY/CN1agrEx5q/hdh32dTkjHcql
 9KzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=1G/a7WS8pUpL1zmvbKTHzrkVwD487e3W+2smn5ktODc=;
 b=gNXGspbpUYbaCX2YjjHktyhn4frNNKSiBjV7B1jmvIKaskYdCpeIVptj9A50hR0NY3
 ff5X/4YNJacoQYKeOQZry/q0aaf9CHC1xAbZuyzW0PuAvxeb2d4P1hi2jeSXSGYAzPH9
 9cwbKYtwLn1ClO5jgCbIXtZLbaiZyAVQrsU8TpI7GPlbbGKTUdc+eCQUyB8o8y8+QvYf
 XJjnNBCdknIPn5g0cvco35LUumN9zcQaJHaDECCa9ON/DCnF83fIBg0OhnTZEMZmxoJi
 mDSchJat6b4lBH9fR8/LbPwm0Vd/ZnBSrTSM6YY8yFMySbC1TaLYl+f9rJDKJgMolGnb
 RwIA==
X-Gm-Message-State: APjAAAWIII5SmeWLv5ZZRTK+5O7lylDki+/EGXigbH88t6n7vhlGk58n
 jcDJcgNHVkQtnRiEAEHqBN1Asg==
X-Google-Smtp-Source: APXvYqx1NahTVPRWa7m2oJ0W4YhsQAxXbI6gehhVtgk+OAiDDzj+CshHjmVcVPHC2vZxZqmTXgtrNg==
X-Received: by 2002:a02:a18e:: with SMTP id n14mr980021jah.84.1565749459743;
 Tue, 13 Aug 2019 19:24:19 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 y5sm114834811ioc.86.2019.08.13.19.24.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Aug 2019 19:24:19 -0700 (PDT)
Date: Tue, 13 Aug 2019 19:24:18 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Alistair Francis <alistair.francis@wdc.com>
Subject: Re: [PATCH 1/2] riscv: rv32_defconfig: Update the defconfig
In-Reply-To: <20190813233230.21804-1-alistair.francis@wdc.com>
Message-ID: <alpine.DEB.2.21.9999.1908131924100.19217@viisi.sifive.com>
References: <20190813233230.21804-1-alistair.francis@wdc.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_192421_972985_8AC4AC2A 
X-CRM114-Status: UNSURE (   7.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: alistair23@gmail.com, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 13 Aug 2019, Alistair Francis wrote:

> Update the rv32_defconfig:
>  - Add 'CONFIG_DEVTMPFS_MOUNT=y' to match the RISC-V defconfig
>  - Add CONFIG_HW_RANDOM=y and CONFIG_HW_RANDOM_VIRTIO=y to enable
>    VirtIORNG when running on QEMU
> 
> Signed-off-by: Alistair Francis <alistair.francis@wdc.com>

Thanks, queued for v5.3-rc.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
