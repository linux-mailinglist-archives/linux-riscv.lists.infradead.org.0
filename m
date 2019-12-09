Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A872116FC0
	for <lists+linux-riscv@lfdr.de>; Mon,  9 Dec 2019 15:56:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:References:Message-ID:In-Reply-To:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JWphYZIaNhuukxRS2IHuZu+/2+Ze27PEBDflVHdoFn4=; b=HBdM+jdZnUOCifdJ/TQoi9DWu
	7aEEXj3GpyGG4WBL8K8+S5kCI0Z/nOUXzHOu8qfknBW0AqrgKtbckEQ77ZBM5NwQIEVz7G/nkU7Ec
	X7cR6ptS7LrBYUwPmfEr4qI1g28gewp5PZ+nt/4lytjKHkvuRB4iy8XCzxUBofSsCg0H75hMoN0UI
	YhhEZbP1l1iBVvr+gcEW3XBDyXleRP+kgQPAkGMzWVQt59PdoznJ8QQECzW9DwHNHKJuu/9XdBo0y
	rMONQKN5YLIhF9D7aRuu1Eyyv9a7M9BPRbhXLs3p6wxyoVnIgKTLIC4zifGbutItfKt3scZ/Wbg4a
	tz3PE+pzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieKS7-0003I4-AU; Mon, 09 Dec 2019 14:55:59 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieKS3-0003HP-5W
 for linux-riscv@lists.infradead.org; Mon, 09 Dec 2019 14:55:56 +0000
Received: by mail-oi1-x244.google.com with SMTP id a124so6488874oii.13
 for <linux-riscv@lists.infradead.org>; Mon, 09 Dec 2019 06:55:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=JWphYZIaNhuukxRS2IHuZu+/2+Ze27PEBDflVHdoFn4=;
 b=S6FeY7Lgg5233e9kALlOr/PKNr3GqXMMDo64M93+/CmhgAZ3TH6IZX1HXQ5yXg8sND
 qVBVamZgRPAWubqU5Qu/ebvpm0BcJ3QI+Z9riXFxQrX/Ftsd7ZTkX8INLpnU81j1Pe0+
 4GlvRqkBCJp7KaUrQrUk6ydhv6wjjLSxdedDQSk/7GGrqNp1QR0n1OBkl7DhPYrP87UC
 1qT0iBBp5scCISl1o9lGw8VWiWKB+/avoWycVIx5AF5utgSam5Ba1RtcSE2C0bt/nXdR
 OwC6VM/ptk9ZzDc6OuGm+E/m+bLpHop+Xztwk/znkqjZrD0iRRXbx4Q+O3z57ZqAPOx6
 S/9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=JWphYZIaNhuukxRS2IHuZu+/2+Ze27PEBDflVHdoFn4=;
 b=sixZCJUrV8a3A4FzRjJTZagzqpy+3W8vptPmsbs1AFkBghOpN03eN3Q7JxECY9ZftU
 NRyIp3ciAOfNmIjz6kWMi7iqJb0gvsU3Fr8lpe7eWuKRss/fZpj8jaLRUNGZKsrEDhQe
 YS7TGIKXcEu1GfdQE0gWPhG4Rpe5L7DSxrYkYEJLtssVc7T7gASkAwBMMNdW6ecD7+pI
 LkFr+FojmP5r6thjf0Uc1rWxX5HXsrB12GTwsMJK04ywPU7wQf42NS9AVrKfhZNtEKbN
 ZnjdB6KYrkZvcH+N6ynVtX4cUUPBC1HrXSNUPmzTm6m4Ec6wvOio7IcDT8j9561jTIiK
 1Vzw==
X-Gm-Message-State: APjAAAUxXDymHsDqu0yYJIymOsmgWOIoPU36RS4NQATqfj43h48CemlP
 /696KPepdaQPNnNo4dFKgbzUyQ==
X-Google-Smtp-Source: APXvYqwIf/nno5H3uogC6/QXhAZOcF9bhjfznIt/zGIcWfuuMHziIXXJDgk4dpdC8PrSQp9XkC9W/g==
X-Received: by 2002:a05:6808:14d:: with SMTP id
 h13mr25247155oie.58.1575903353434; 
 Mon, 09 Dec 2019 06:55:53 -0800 (PST)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id a8sm3009404otp.42.2019.12.09.06.55.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Dec 2019 06:55:53 -0800 (PST)
Date: Mon, 9 Dec 2019 06:55:51 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Olof Johansson <olof@lixom.net>
Subject: Re: [PATCH] riscv: Fix build dependency for loader
In-Reply-To: <20191207212916.130825-1-olof@lixom.net>
Message-ID: <alpine.DEB.2.21.9999.1912090655360.301523@viisi.sifive.com>
References: <20191207212916.130825-1-olof@lixom.net>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_065555_333401_0A20EAF2 
X-CRM114-Status: UNSURE (   8.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-riscv@lists.infradead.org, Albert Ou <aou@eecs.berkeley.edu>,
 Palmer Dabbelt <palmer@dabbelt.com>, linux-kernel@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sat, 7 Dec 2019, Olof Johansson wrote:

> The Makefile addition for the flat image loader missed an obj prefix.
> 
> For most parallel builds this worked out fine, but with -j1 the dependency
> wasn't fulfilled and thus fails:
> 
> arch/riscv/boot/loader.S: Assembler messages:
> arch/riscv/boot/loader.S:7: Error: file not found: arch/riscv/boot/Image
> 
> Fixes: 405fe7aa0dba ("riscv: provide a flat image loader")
> Cc: Christoph Hellwig <hch@lst.de>
> Signed-off-by: Olof Johansson <olof@lixom.net>

Thanks, queued for v5.5-rc.


- Paul

