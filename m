Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09C3B83BB1
	for <lists+linux-riscv@lfdr.de>; Tue,  6 Aug 2019 23:38:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/XKW8sSQeYgVTwADBprVp4LHkaE5BX/5lUo54OSeYuw=; b=e+lXp+b0RegoQL
	jpNcJSTOfnkFaGIpHjyiN3OV/kZ1P2kHUQzoHsvw6mz1tOb6tKTkP0/f3aEiKhAsUSZbVwSlccY0b
	+/J1x/XH9pkwka3RrPzmtSovu0vAADcC7DDrAC7H+MRiwdbM4osX+LA6ouyRwKGuYMeCmvii494Xh
	3sp7BIrm36bGtr1aSx0gxT3TMiRj8Yh011sJOeda8DmJ/FTFh9nT/RyGkQqn5Zymxd8tPyH+QiY6I
	mo8LcvHZIioux/tWGi1p7vnl7unp3Q41JedWvLKONq2mJ5iLH8Cd8r3Dq2ThJMvkjxxvcsx7fZi8x
	2m3b9+EYJ/0YrLZVPt/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv79g-0004iI-UZ; Tue, 06 Aug 2019 21:38:05 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv79d-0004hg-LT
 for linux-riscv@lists.infradead.org; Tue, 06 Aug 2019 21:38:02 +0000
Received: by mail-ot1-x342.google.com with SMTP id s20so30777808otp.4
 for <linux-riscv@lists.infradead.org>; Tue, 06 Aug 2019 14:38:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=lorWiddpxg2WMsy0/smy1K1C0pOfS2GdN2jnCeFogUs=;
 b=Q0Zjd+TM00oZ630nvIWNZ+HRm51Wsx5YHS2eeY8dHTTrbbgj7LjxyTLFOfgusW38kG
 wUssvWh5QtUnttZvlObrMx4ERY8wi8VJZsi/QRCWmLJ1w5S95mvpP8qXP1UYr1dH/ZmW
 5KGIqlPD1hOdbJX4af/sLexZHpyTvOce84cZQ7GSnGYvxPmiIdZg6KNhOqdRIpLtn5io
 rpUIoH4kb87hxR8tv8gevBuwFMYmJLwJC2E39hMHz//t+3AR412RMkSTzP3e8T/0wocs
 a6iP2KtaSIRWpj0P/BDXMz2wcO4uxVeHP2eSBk45hWyLOcK3kjynpMKguic5NKjTjKxf
 +ZFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=lorWiddpxg2WMsy0/smy1K1C0pOfS2GdN2jnCeFogUs=;
 b=jUC5rJtcpkc073UZofdsVTDqoeteZ5NdpJLgKL+olVg0PzHaq+ncJ+cLr3HqXKs6Ly
 FAdLTdEYpSn3emQJ1w6WlH25kYTJPtPe7ysPKYF1H87oj+qXc7zhMLFwnxvHo2SmvJ+h
 iMl7pRdQZ+gpolsCdNxwxwORuuWqXOwwIeVFxixTGKEx3cTDDe1Hp60xZaEfnPxRU9F0
 fiJBqpI/cuyBunRu9DflItr0+RzYDOQLeY7kBUoJ5/VQh6C/P95EZ2T2KUEPrRH1h28o
 vzK4GmsiQr/9C+RG6kKLZW0AVZXp7ZxNRP5jmvHQ9RuWY8+msEsphv2ffxcXvwxgJ1hu
 +VZQ==
X-Gm-Message-State: APjAAAU/F6muigtZO0lP4fKJaKFVU6NXq8j6O52Bq5m+7KchjicH+r2Q
 sKGlMCN6WHUUmonMITc1DSfS8w==
X-Google-Smtp-Source: APXvYqwDSlDrT26BRCk2A5kNmd5K8poKBkr8uW3JWosK9nm0mwlDSBLckAmTzrf3lJWlTfKIVDn2LQ==
X-Received: by 2002:a5d:8497:: with SMTP id t23mr5657932iom.298.1565127480073; 
 Tue, 06 Aug 2019 14:38:00 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 t19sm78314934iog.41.2019.08.06.14.37.59
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 06 Aug 2019 14:37:59 -0700 (PDT)
Date: Tue, 6 Aug 2019 14:37:58 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Atish Patra <atish.patra@wdc.com>
Subject: Re: [PATCH v4 1/4] RISC-V: Remove per cpu clocksource
In-Reply-To: <20190803042723.7163-2-atish.patra@wdc.com>
Message-ID: <alpine.DEB.2.21.9999.1908061437000.13971@viisi.sifive.com>
References: <20190803042723.7163-1-atish.patra@wdc.com>
 <20190803042723.7163-2-atish.patra@wdc.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_143801_733166_13EDE1AE 
X-CRM114-Status: UNSURE (   6.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
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
 Anup Patel <anup.patel@wdc.com>, Alan Kao <alankao@andestech.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Johan Hovold <johan@kernel.org>,
 Albert Ou <aou@eecs.berkeley.edu>, Palmer Dabbelt <palmer@sifive.com>,
 linux-riscv@lists.infradead.org, Enrico Weigelt <info@metux.net>,
 Thomas Gleixner <tglx@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, 2 Aug 2019, Atish Patra wrote:

> There is only one clocksource in RISC-V. The boot cpu initializes
> that clocksource. No need to keep a percpu data structure.
> 
> Signed-off-by: Atish Patra <atish.patra@wdc.com>

Thanks, queued for v5.3-rc4.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
