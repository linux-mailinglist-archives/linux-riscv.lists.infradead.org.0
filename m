Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B0FCB3E7D
	for <lists+linux-riscv@lfdr.de>; Mon, 16 Sep 2019 18:12:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=FZotUPkbY91Ra++XOr8bQPiZv3/TrELNQ7u931NuHk8=; b=LPw94+WdMJRS9/o0vtdgvvXDe
	zfvg1VtQ1sNUfiSkTGNyEundrzfVrjhQH339KVD8mQJBb6bu6TpJOkffnWDEteLHNIlCPUmtwtt7i
	psD0ap+VVx0ijyEuo4s71o55oAC7YtvGgRE9HkQWhC3qWlfd9Gk0nDvp+FgaZWQzLaMr11MKTrCba
	78qab1XlB3XpmrXfAUlNjuaWpyon4HQRq84WOmeHcyqHAJU2KiYLdxSJtj8kGPgzadBgOUGigRLFx
	GIJ+21mT1aNms+KomJwQZF8GTe2Eo426FFFxKEGVsBtesdax1gljMCgpnUtNk1HCCprKWgsnlvhhc
	ZKOH9DMzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9tbv-0001Uc-Gx; Mon, 16 Sep 2019 16:12:19 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9tbp-0001Tk-1I
 for linux-riscv@lists.infradead.org; Mon, 16 Sep 2019 16:12:14 +0000
Received: by mail-pg1-x544.google.com with SMTP id w10so265685pgj.7
 for <linux-riscv@lists.infradead.org>; Mon, 16 Sep 2019 09:12:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=ukGKzeQPiPEN2lY4FZKKhDC0scsYCbLIRezpYkGEnF0=;
 b=FcKOD68QvYkg/1znS/5QrPPjZXv1QqH3fSK02oc1bQKW0SYkWoBRFY6PxGg06yy0vy
 Gs0ZPsn6syFlKJbmV+0D1OEPzqwRYjqxq3XjpoyLe4EPDEEtGybpzwPAwZDL2X6nRUWR
 0hBr73Y+Xcmun0vUwyv07NC2OeEq2h0MOqqNJpYIN//5tFEjfAErHegVySR5pdKk48AL
 c/DeGoJrrbR6tViGA+Mk9waaSgMA6qNWt5vgKlcsXnPmq33h2mXRdKFHUBMnRHy/vmIA
 qK++wUW/pwm4QDry1/6EKTSbOdK16U7MX4dqjP3bqR5eEsd6DYZcohc4P3QfAr94S1c4
 qlhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=ukGKzeQPiPEN2lY4FZKKhDC0scsYCbLIRezpYkGEnF0=;
 b=OqogEaGQtX7TlPFDUKqVv16X54VlCOG7hKuWb1tepgVcRiaPsltP5rAoODaXgIIzRm
 eomCzYSXbbzuPYCM9VCOVAJqgk32oxGHFuhJae5sj4pdtAQ5rUK+Q3ejelUSV3E1jGve
 z5y1+Tuyee85ZXj/JoorBIE9XIMvRJxfcizr8EfvBl4C9c3JYbJp8PYx/T+VM6KQxxR7
 udUtUtErB3lq+QGYnEGzP9y6qjLul7UkYFDvpbjvCuqy9YID6B7VyqZ/g7+nM+3L7qUH
 ow9NAQh6V0RA72fl4KQ6z0k/esymNRYRaUuEOqpZbXJ+P3RZcnVuOx/pB33UMfI1Jwwh
 7//w==
X-Gm-Message-State: APjAAAUpch5o5EVp7yzFlMxmWcsx1oFC3VRn9yhckOibUvg3upoxCBuo
 ZFlXAeJND7ou3gu7Z+mCTNmO8w==
X-Google-Smtp-Source: APXvYqxGwHBnWhE1JX8v2f0UHWjla9dhYdqMsX29OJQAB0Zsm8tHG2v71dQ/iUvU9YoelteZGOUV1w==
X-Received: by 2002:a63:f84b:: with SMTP id v11mr1321632pgj.187.1568650331586; 
 Mon, 16 Sep 2019 09:12:11 -0700 (PDT)
Received: from localhost ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id 31sm8888334pgr.55.2019.09.16.09.12.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Sep 2019 09:12:09 -0700 (PDT)
Date: Mon, 16 Sep 2019 09:12:09 -0700 (PDT)
X-Google-Original-Date: Mon, 16 Sep 2019 08:32:58 PDT (-0700)
Subject: Re: [PATCH] serial/sifive: select SERIAL_EARLYCON
In-Reply-To: <20190916064253.GA24654@lst.de>
From: Palmer Dabbelt <palmer@sifive.com>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <mhng-671404fb-c86e-444a-86fb-b1ba027b1c36@palmer-si-x1c4>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_091213_141345_329D10F0 
X-CRM114-Status: GOOD (  10.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Greg KH <gregkh@linuxfoundation.org>, schwab@suse.de,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-kernel@vger.kernel.org,
 linux-serial@vger.kernel.org, jslaby@suse.com, linux-riscv@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sun, 15 Sep 2019 23:42:53 PDT (-0700), Christoph Hellwig wrote:
> On Fri, Sep 13, 2019 at 01:40:27PM -0700, Palmer Dabbelt wrote:
>> OpenEmbedded passes "earlycon=sbi", which I can find in the doumentation.
>> I can't find anything about just "earlycon".  I've sent a patch adding sbi
>> to the list of earlycon arguments.
>
> earlycon without arguments is documented, although just for ARM64.
> I can send a patch to update it to properly cover all DT platforms
> in addition.

Thanks.  I've kind of lost track of the thread, but assuming that does the 
"automatically pick an earlycon" stuff then that's probably what we should be 
using in the distros.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
