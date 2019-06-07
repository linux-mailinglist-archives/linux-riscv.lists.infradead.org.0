Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 946C639282
	for <lists+linux-riscv@lfdr.de>; Fri,  7 Jun 2019 18:52:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fK1THXGLRWL6oGzhAU+wd387SJk6eM9DPcwm6DE+SMw=; b=uVL9sFcR49bRsB
	HwssQyenYy47ze9Bfzq5VQehSF4PmZIkRG9s6xIKqDlnAD4/Pirs5BoweX1bXYT74XNGsWG8tS00z
	/8xzu2Kx6TMNtfkTONLaltDnw1CBSBc3k+vLP/cu1hwFSwXdo9It07TP/kljk7hU2JwNyZdAlBW/8
	SGUIlYBoK1cc0QRfkPw5XRfU8o5i1B4EYpziHD5VSGS5rlVIRKb6AaauT/4KygqL+GnfRBW5j3raS
	TajwOmjfQSP4zMKKev8x6URvuOB3P8Yhcptz9wOKcUHi1SzPb9jsXKdHMMUaWzw8SoelY1ppx5Sr/
	t1Yl8HVYooJl2UW/K6CA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZI5w-0002My-Qc; Fri, 07 Jun 2019 16:52:00 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZI5t-0002Ma-It
 for linux-riscv@lists.infradead.org; Fri, 07 Jun 2019 16:51:59 +0000
Received: by mail-pf1-x441.google.com with SMTP id u22so1522407pfm.3
 for <linux-riscv@lists.infradead.org>; Fri, 07 Jun 2019 09:51:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:subject:in-reply-to:references:date:message-id:mime-version;
 bh=KAdja4g+5K1yNRadSGa4iS254vjYz6FUIwDf3E1mgJA=;
 b=0j1BrL//JTMqPk4S/qOTR9Ht6RSavMWK+fEjT0ZZAIKcAfr9Pi1BMrnKrD2aHUPPaN
 vGzHheuuiH8JfT3i/I4/ZzTv8EoUJlo8/aw/LSSMrgKQXlRIfmxZXIBAlOYBh0vgHJfR
 XiW+idkrDc8Ph2C+3T7dnrwJn/0m3v5VLS7kY7AOauaRYRBEy0zM1n6C2DEAa0/ksB9J
 xuIP9TqP5hYs58ps5XHFrRiG4ezdyhfdhepMn9BTm+At8Ic/K+hJKqVmMDoeaG0h+HlI
 1lvZqHyP0H5JgT+4iX0S6mm7AJo+94Wc3a80kv/eiFmp9IbiPJVKG7dzlYTl1gq2qgjY
 TzUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=KAdja4g+5K1yNRadSGa4iS254vjYz6FUIwDf3E1mgJA=;
 b=bmeOwb26p55G/27SJXdKUF45HaAohmRURZ4/t1c8lg0wufenwbzVKoLsZNA2Z4Si3y
 xU5Bh1J6e1mVU4xNj6Wm5Du1vfvORfQW0k2u6xjpdSTFRxwPYwkLaP0t4gAAUFdPCGd+
 86gKszsIvwRHCyRhFp/GMW9xtf/3gmavKKiNSO/s/1KGGCHdesGdrUc2PGiK0WfHbA+q
 1zk9i8wmaQuxrv08lpdbrXuYJDBjiSmtSvXWnOMOJTh+dEOTWjYupPwxbS8WoPeMAacK
 +zLo7m6Do6H2kESKR6N+vGbsqJGv1UWVRpzViiDD0MYGRTPE1HX1xGHBEkhpumUdXHTw
 7DzQ==
X-Gm-Message-State: APjAAAVZj9Xvhf+o9sNCZdqBcHnP1JPULmgjqMl8NCK5frBQfHOMvu7r
 H6pKCRJpAsxv2cJ/4MWfvGrPVg==
X-Google-Smtp-Source: APXvYqzw67ywps2BIX0frRcevuXgajIjxlqqSkbhuQB8Awha+f/Wfl1unsc2kcMs5EH4mXVA+dx7lw==
X-Received: by 2002:a65:408d:: with SMTP id t13mr3497326pgp.373.1559926316302; 
 Fri, 07 Jun 2019 09:51:56 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.googlemail.com with ESMTPSA id 2sm2705166pfo.41.2019.06.07.09.51.55
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 07 Jun 2019 09:51:55 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Atish Patra <atish.patra@wdc.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 "linux-kernel\@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-riscv\@lists.infradead.org" <linux-riscv@lists.infradead.org>
Subject: Re: [PATCH v3 0/5] arch: riscv: add board and SoC DT file support
In-Reply-To: <05010310-baa2-c711-cb54-96a9138f582a@wdc.com>
References: <20190602080500.31700-1-paul.walmsley@sifive.com>
 <7h36kogchx.fsf@baylibre.com> <05010310-baa2-c711-cb54-96a9138f582a@wdc.com>
Date: Fri, 07 Jun 2019 09:51:55 -0700
Message-ID: <7hftolcp90.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_095157_686024_51D9B627 
X-CRM114-Status: GOOD (  11.10  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Atish Patra <atish.patra@wdc.com> writes:

> On 6/5/19 10:37 AM, Kevin Hilman wrote:
>> Hi Paul,
>> 
>> Paul Walmsley <paul.walmsley@sifive.com> writes:
>> 
>>> Add support for building flattened DT files from DT source files under
>>> arch/riscv/boot/dts.  Follow existing kernel precedent from other SoC
>>> architectures.  Start our board support by adding initial support for
>>> the SiFive FU540 SoC and the first development board that uses it, the
>>> SiFive HiFive Unleashed A00.
>>>
>>> This third version of the patch set adds I2C data for the chip,
>>> incorporates all remaining changes that riscv-pk was making
>>> automatically, and addresses a comment from Rob Herring
>>> <robh@kernel.org>.
>>>
>>> Boot-tested on v5.2-rc1 on a HiFive Unleashed A00 board, using the
>>> BBL and open-source FSBL, with modifications to pass in the DTB
>>> file generated by these patches.
>> 
>> Tested this series on top of v5.2-rc3 on HiFive Unleashed board using
>> OpenSBI + mainline u-boot (master branch as of today).
>> 
>> Tested-by: Kevin Hilman <khilman@baylibre.com>
>> 
>>> This patch series can be found, along with the PRCI patch set
>>> and the DT macro prerequisite patch, at:
>>>
>>> https://github.com/sifive/riscv-linux/tree/dev/paulw/dts-v5.2-rc1
>> 
>> nit: I only see this series in that branch, not any of the prerequisite
>> patches you mentioned, which made me assume I could this series alone on
>> top of v5.2-rc3, which worked just fine.
>> 
>
> I tried only this series on top of v5.2-rc3. Kernel boots file with DT 
> updated via U-Boot. But networking didn't come up.
>
> Do you have networking up after the boot? If yes, can you please share 
> the config.

I didn't test networking from the kernel initially, but looking now, I
do not have networking come up in the kernel either.

Kevin

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
