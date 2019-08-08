Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41EB586CFA
	for <lists+linux-riscv@lfdr.de>; Fri,  9 Aug 2019 00:13:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6MzNTaXXci4psPF0p1PHzwNpyB0x4fY3geIOwqFo95k=; b=OVoHgKXUbiTVaI
	jCANV93SKRjfFyCFGSQYAzzpAXya1ln/8wq68RgdmTg1WzhKc6DRdP3hcOEho+UuaBTM5yJ+5Br7W
	tiULlKr+7z1efdbu0w7A3dOz21wWeW/yDlV+h2tSLaaOo2xRpdm66gINBRelrIUjm85mmyCMaNFMp
	9Rsl6FjztUJlcKffEzei/sQI3oPpQZedSgkZQeiJ/C9z6CWRm+1o0sIKd8u750UAWxr6OpzSzrgAb
	aX2iwSW6A15my5YcFoQmBhE4Tp6ji6hKzkH+Hn1pOVEd90UPoEXe+0i6UmaRgOxK83YRiMgIDNwM3
	5glfL/TowdJvCZyn/gNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvqer-0001xM-8G; Thu, 08 Aug 2019 22:13:17 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvqeo-0001wr-H4
 for linux-riscv@lists.infradead.org; Thu, 08 Aug 2019 22:13:15 +0000
Received: by mail-ot1-x343.google.com with SMTP id z17so6555969otk.13
 for <linux-riscv@lists.infradead.org>; Thu, 08 Aug 2019 15:13:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=QAveB2MW5aJCL42pdrRo0A2p3FoeHwf0+C7PsDEtr8A=;
 b=BYh3CXmpTdLhzlZKIWTS8wOiE1OOGf9hls2ts3bYz7IveQviKpWWqIgibdewQlI/V0
 bnjk37YFfE6sgM8hrsj1fuNTcN44llGXOqtbclPgC6p1fVnUUAd8ALIcpBm+ZjLWnwfi
 +ER3HzavOE3pgbXBU+FsmTQRfpeI78xD3Ppwl/MyXIBZtjmYfOOL6XyaBXGot7zZHq2K
 GP2NsSb/pb6jBVogIgEhzwOFp5bl1GPq502b3f+b4e3lNQxiSH0BAOt/Z0bLNls5hQmG
 UxceZu66FYwoLYmp6J+3+/qh1D5I11XIzY0q8b+YtWdiZBmgm7xellduUI32H4JiGWbB
 17MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=QAveB2MW5aJCL42pdrRo0A2p3FoeHwf0+C7PsDEtr8A=;
 b=G0pM5kKeF5zXU+q/B4ZjZxe5Q6WmUBPNDFtqPfDu5QDObjEc8jg+sTEAGbJf4gFvsz
 L0fOWGGpeVIgDGc4dF2QHCWlM/z8u2gP3Evg7foC+aDVu/ca5y4c5BvEF296qvIM6CdZ
 Y3QG3d31VJbiSwp6I5bed3OCqwxRUROlqFZTXR1QbClFBUmIixwLcYN68BNcGtXYVqIT
 H9VWwS1fd2rOSo9zNlpFu8YvaABnDudXOBQqMrX/9izDC42C+INpJEPw1tcpFogwMOjH
 hzYcsmXer8rYTcaC+C+Qn/fWfsIvRSYdOiRjdJa4eKAM9ndj/kPFN1b6NTAvrfdGdcBo
 CJqw==
X-Gm-Message-State: APjAAAXgz87QefYUr3EPMurQYGs4l2VoNoYLDdHBcOUKLshZfB44mwym
 33AqsjMDEnz4P2m/lO/H3jPjJebMZhc=
X-Google-Smtp-Source: APXvYqw6s/RyB6V5j4rVM86HvbsgecZHQYSNieyQsEmT4pWYa+NHHnA6N9MkEh+XkeHSxuIzd+PxoA==
X-Received: by 2002:a5d:9acf:: with SMTP id x15mr16478208ion.190.1565302393249; 
 Thu, 08 Aug 2019 15:13:13 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 h19sm63989093iol.65.2019.08.08.15.13.11
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 08 Aug 2019 15:13:12 -0700 (PDT)
Date: Thu, 8 Aug 2019 15:13:11 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Bjorn Helgaas <helgaas@kernel.org>
Subject: Re: [PATCH v2] pci: Kconfig: select PCI_MSI_IRQ_DOMAIN by default
 on RISC-V
In-Reply-To: <20190808214728.GC7302@google.com>
Message-ID: <alpine.DEB.2.21.9999.1908081512200.6414@viisi.sifive.com>
References: <alpine.DEB.2.21.9999.1907251426450.32766@viisi.sifive.com>
 <20190808195546.GA7302@google.com>
 <alpine.DEB.2.21.9999.1908081349210.6414@viisi.sifive.com>
 <20190808214728.GC7302@google.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_151314_627055_C30938C2 
X-CRM114-Status: UNSURE (   9.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-pci@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org, Wesley Terpstra <wesley@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 8 Aug 2019, Bjorn Helgaas wrote:

> Indeed, sorry I missed it.  I generally work based on -rc1, and it
> looks like 251a44888183 was merged after -rc1.
> 
> Since we're after the merge window, the default target would be v5.4,
> but I see some post-rc1 pull requests from you, so if you need this in
> v5.3, let me know.
> 
> I applied your patch to pci/msi for v5.4 for now.

v5.4 is fine - thanks.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
