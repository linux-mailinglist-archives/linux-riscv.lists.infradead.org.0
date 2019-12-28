Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6871412BCD1
	for <lists+linux-riscv@lfdr.de>; Sat, 28 Dec 2019 07:03:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:References:Message-ID:In-Reply-To:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=02OgeYXQzBdT2lFGeruc0qE3qRxj/P1vmd+xB2uVOWU=; b=dEhcy7YkaSrAwpF4gwQ7ufaSA
	MeusYs5TDup/NYwfmDc55oJ3tPphzXePDT2evlEbBqC4wmTrCQpWF7N88y1IP8XW38ItSSCXvRjY1
	l7Q7NU363joDa9opJap/Ebj0SGk+3PhCGExXX+MrSj7HbY3hZ8W9I14BgJkbcY5mpp5JtnvCXD39O
	fJy2kyWWTA1GB18ZnAtvac3/rc8GQHySTI3Noo6ypnu/WVnnBk+8nGllkFc1FxVG3K7dLe8YiCTEI
	LKyZ04reSDu2uEXggoh8lvh5LwlrOcJ+MTfCb6apXMN0gv2GXr5gZb5tiZ8APA6OOzLLIXXXDL3X9
	Hqq+O89Pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1il5Bm-00068t-VR; Sat, 28 Dec 2019 06:03:02 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1il5Bj-00068H-H4
 for linux-riscv@lists.infradead.org; Sat, 28 Dec 2019 06:03:01 +0000
Received: by mail-pg1-x543.google.com with SMTP id k25so15425684pgt.7
 for <linux-riscv@lists.infradead.org>; Fri, 27 Dec 2019 22:02:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=02OgeYXQzBdT2lFGeruc0qE3qRxj/P1vmd+xB2uVOWU=;
 b=dosrMYBmKsUI90ww5BizFf2HLD+EuoUVW2b7uMSItr1MnNX46QglnrkuO1hTcjwxr9
 MF0uS5UBy8rJPBKsMHiwaYBAL5BwG8DzYMTgNo6RwKGSH2OAd9b/NwSGC2Zk8wMYk0Lw
 dI82ngPt6gbjLR7oCAZLZTP6i7bEIUXKv3C55m1foXdFFYo7rgeEpGHxGEhZohP216fb
 /xKFuLbi00poxkQIJbd9nn94VzusyE+Up23SWXxRxRnZkQcDT8KaSBUU7x+RHx5O4ddu
 TOSldNHQ1teeLsSE3Pxc4dLqjZZxwzJmCjfG3b7ecOWu8Oge0vved4uc7GHvNgQANMaQ
 Lj5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=02OgeYXQzBdT2lFGeruc0qE3qRxj/P1vmd+xB2uVOWU=;
 b=TJ7DccBZ0EaLpS8bg6MDOYS66VO1PPA++H8ts5o8yh+zjNK4J1UCDsztm/9El+DYrw
 zck+zXKpeG8ax6pyqqNo91pPo4vwmmd7oxNxtzOaqFQFeEPiuD0iGtFy7vll9gnnIsaD
 xZiwlrn+oNVO1gaYcPH8vg4uD1h0Rdny5I8VEc4FsXxyFMK7GS1CepWrrQpZMyXCGaD9
 yugZWd03V5tapHHJ/1RI45aMeMEv3QAXKZy8cWIKcgj5yAL72BS7Q+ec2nqOAerUgDpF
 NvUxdviV4i8Hz5gzuxVxvTnrafnFcUa8xc5kKVa5/QCiuPNBOF598vQ7Yb+Kk8/Ab8nG
 AaXg==
X-Gm-Message-State: APjAAAVbgRSl5i6zn5u9rw/Vnj/V0WVS7794qCtjwO/Y9QIHwfIM3CNn
 F119cbFTHDQWilg909TkovWxIw==
X-Google-Smtp-Source: APXvYqxAjVLo/sSKKhyMBHbUx32270yRWvdM/quLSvk9dZ0cErgGQcZ8rJCWkNkFThlKnxQEmfcU/Q==
X-Received: by 2002:a63:6704:: with SMTP id b4mr60478145pgc.424.1577512976320; 
 Fri, 27 Dec 2019 22:02:56 -0800 (PST)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id j17sm15348961pfa.28.2019.12.27.22.02.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 27 Dec 2019 22:02:55 -0800 (PST)
Date: Fri, 27 Dec 2019 22:02:54 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: David Abdurachmanov <david.abdurachmanov@gmail.com>
Subject: Re: [PATCH] riscv: reject invalid syscalls below -1
In-Reply-To: <20191218084757.904971-1-david.abdurachmanov@sifive.com>
Message-ID: <alpine.DEB.2.21.9999.1912272201270.194339@viisi.sifive.com>
References: <20191218084757.904971-1-david.abdurachmanov@sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191227_220259_702420_DA766B42 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Kees Cook <keescook@chromium.org>,
 David Abdurachmanov <david.abdurachmanov@sifive.com>,
 Anup Patel <Anup.Patel@wdc.com>, linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org, Vincent Chen <vincent.chen@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Thomas Gleixner <tglx@linutronix.de>,
 Bin Meng <bmeng.cn@gmail.com>, Valentin Schneider <valentin.schneider@arm.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 18 Dec 2019, David Abdurachmanov wrote:

> Running "stress-ng --enosys 4 -t 20 -v" showed a large number of kernel oops
> with "Unable to handle kernel paging request at virtual address" message. This
> happens when enosys stressor starts testing random non-valid syscalls.
> 
> I forgot to redirect any syscall below -1 to sys_ni_syscall.
> 
> With the patch kernel oops messages are gone while running stress-ng enosys
> stressor.
> 
> Signed-off-by: David Abdurachmanov <david.abdurachmanov@sifive.com>
> Fixes: 5340627e3fe0 ("riscv: add support for SECCOMP and SECCOMP_FILTER")

From the thread, I couldn't tell whether you were happy with this patch as 
it stands or not; the thread seems to have petered out.  So this one has 
been queued for v5.5-rc; let me know if you didn't intend for that to 
happen.


- Paul

