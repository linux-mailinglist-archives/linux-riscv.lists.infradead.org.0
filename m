Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EAB68C392
	for <lists+linux-riscv@lfdr.de>; Tue, 13 Aug 2019 23:22:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KJsSyXQu0iNDnP0MkChz4ANqKJSiDYpNY1yDzdgAip8=; b=aGkYzsg2tZDrYi
	gWjBXfiD972kr3m7HsXRKqR5BQ2uNBACOyVwrt0bvj0UB6F9b8bIXX4JxWB1E1t57wpTeVjjsPKC/
	lzJrmnOedAJBuESIV5bP3LhDAVs2g6UI3kREL9F9d5+uotV24ytVdxAPN1s99NUKu4Ko0d/7QMysX
	vzmXbsN3PncoFwc58/ouZhx/pwC4UWAcr0mhbwX8oRMM9IlNwgfBHAKpfRFTzg8FSkeXNLDcO3IkV
	KN5+IOGFmkshuUcMa9FL6QzVNVx8p1yLBrX9OjDIMq5fnbO2zp8gWEwYYwHWKhWfyFTCJ3tamu2qS
	BepWifeSpeo3Z4YeK2zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxeFm-0005VL-BP; Tue, 13 Aug 2019 21:22:50 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxeFi-0005UF-Gr
 for linux-riscv@lists.infradead.org; Tue, 13 Aug 2019 21:22:48 +0000
Received: by mail-ot1-x343.google.com with SMTP id k18so45366404otr.3
 for <linux-riscv@lists.infradead.org>; Tue, 13 Aug 2019 14:22:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=HCEURFnu1F6VcmzkSBvu3b17UuLbHzkG6upPe1wKPpI=;
 b=lq1nBADk4Zsi0vD3oVAVAHMR9RcNN7R2j6i9NfQJESTvAbJ7j72bCysYFgb+ZuULI4
 /t3XOL/nWw7iyiTusBsiu3Uz9dwe5VjwU4vTVGQYle5MaPDwrwvJrOx+z8Qv5svqEk+3
 DJSFbZymFrUSy1OEVnxVgfmI7OfKN4pxMbpCdQytWdbIHU/ep6jvExi2iNz9JLSw/2uH
 NcAL7dxyT9PXKr00ZI8hhtCERS7sy0E1OldVJffiePbS16v/knoMepJbhqCmxoxIqDzA
 eyNye2rT9qHQs0rY6i6PW0i2JbwaZbJGy7gYZw8EJZKKcTU7yrDLhFV5cZPx67TLOYMx
 0rXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=HCEURFnu1F6VcmzkSBvu3b17UuLbHzkG6upPe1wKPpI=;
 b=NOoImFr8H5yHcWkcva3BEc57ta6ZxCJHJUs4SAkoSAwkr+8H0V9stlk7xMtRfDtGkj
 J7LEuguv75bPd0DlYOM47a+dLqVrPT5BWRWBq8YdWm0VVIdRHMCpPA5uGZ8M7b9w3El5
 LgNYYoOuYJhsYmP6EBpMp2maTwLIbpMzdFRkPhkxOX2a+6yMpmz7261/7G+R6294pCQb
 jQ7yqGgtG4ZBu5SjOP0FmpbWrZwITXgCKkxdDxqJ6MMyPMYYhilx4Aa9Nwbe4rdbjArs
 8WRcJLQsHu/nYrkRnrWEA1dce0/CiM7g6ryzaJOf4NrBqMjUgCDEynMvTUjCZwgZI1Ed
 ZXKw==
X-Gm-Message-State: APjAAAWg7nky+E5HAJJuioVUpSSItOX3Y5bV6V+Pdfdl143N8EXxvMDs
 Z/diwbe0cz5lIuZTKAJ0nISX7o1fULQ=
X-Google-Smtp-Source: APXvYqxYmd0KYMaxU3ncGiQd8V+hBRE+Mr3WojAB+zrYvIQz6aRwQk6a7C6kdPihnQYIbUZkUIeppA==
X-Received: by 2002:a6b:fd13:: with SMTP id c19mr17401753ioi.168.1565731365859; 
 Tue, 13 Aug 2019 14:22:45 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 x1sm16091606ioa.85.2019.08.13.14.22.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Aug 2019 14:22:45 -0700 (PDT)
Date: Tue, 13 Aug 2019 14:22:44 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Carlos Eduardo de Paula <me@carlosedp.com>
Subject: Re: Changing SiFive Unleashed core clock rate on 5.x kernel
In-Reply-To: <CADnnUqcp_7yN4WK2uXberCV_uwjPSj0PxpiXg6kp71--QGPJaA@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.9999.1908131417450.29979@viisi.sifive.com>
References: <CADnnUqcp_7yN4WK2uXberCV_uwjPSj0PxpiXg6kp71--QGPJaA@mail.gmail.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_142246_562751_2CF9B0CA 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
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
Cc: linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 12 Aug 2019, Carlos Eduardo de Paula wrote:

> Back in 4.x kernel, we could set the board clock rate by echoing like:
> 
> echo 1450000000 > /sys/devices/platform/soc/10000000.prci/rate
> 
> Now with Kernel 5.x and with the board DTB, what's the correct way to
> set this clock rate? I tried changing RTCCLK_FREQ from 1000000 to
> 1450000 but I got some clock skew during use.

RTCCLK is used for timekeeping, so changing it won't help.

> Is there anywhere else this need to be set?

There are some experimental patches here:

https://github.com/sifive/riscv-linux/tree/dev/paulw/cpufreq-dt-aloe-v5.3-rc4

Only the userspace governor is enabled - for one-off, manual frequency 
changes, like the one you mentioned above.  During frequency change stress 
tests, or when a CPUFreq governor is enabled that causes more frequent 
rate changes, either the board or the serial console will hang.  So more 
debugging work is needed before this can go upstream.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
