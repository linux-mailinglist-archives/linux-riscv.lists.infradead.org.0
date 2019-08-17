Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B0C49130B
	for <lists+linux-riscv@lfdr.de>; Sat, 17 Aug 2019 23:13:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gb57HKLxnIu9163IHhXGSf1Gjq0Pv+ovYo9GvWsg1fM=; b=N043bK3VORgsMd
	fPtoPgJ8STiJm8JyTbUJ+YffThDG62hcLTfwkbAheERWPe1oz2W5nI1utKsSPzMoRl7D1HViZ6Sch
	+i+tGmcwJkNK2jdQyP3PaMlqnoYrJXDlRy0YECRnN/300kYNh0q0rJAYzHW/PNpuwXdlEkMDkoA7v
	yvVb8o5UsnsSg9IeHvGtE0keJ0eajBYIlF6w2pWXmLqq7vDxG8v92aYr8U0kBdOvoN/w6kvNaSV4I
	ViEiXuWgyfdlnJaIso+dageQGd6RclrIUCPXjf2gaOeuSa1OVEQHcYGXdbI2wXcxbcm9Fx49Dti3A
	0q9FZoJe7+onvSZ/xVRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hz612-0001WX-3N; Sat, 17 Aug 2019 21:13:36 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hz60y-0001VO-J7
 for linux-riscv@lists.infradead.org; Sat, 17 Aug 2019 21:13:33 +0000
Received: by mail-io1-xd42.google.com with SMTP id j4so13225871iop.11
 for <linux-riscv@lists.infradead.org>; Sat, 17 Aug 2019 14:13:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=AL7Xo7O/pQKUNo42UZGV/pFyRrG+zXus+zNwtHz5W9I=;
 b=deCansAVyhf6TTfeW7XM1FrkPiKpOaNXepy8EGROiXSzE+3idZaMvhF5loMAvVUBWX
 8qQ/Du7og2kbtPPvNhwLzZWiLrJ6qrhbn+d5EChT/4JvkGHH56R9YNddG7eJVGTYNEBI
 QoW6LnQrYgb2yLLTPECkaOYkSk37tjvRRkXYTyrjo+mx8C8Hjp4wFkBmcQM76Qw2K1Eg
 ffQxDHpTJlgpIZyGleaux3hEVOCiLhnzK0XmbrN4f55/9P1fEgrVr+DnimObxh+7zRlK
 4Yo+DuQEB/pAtSat0tnGiWfIUMs/ueCHA8h7mqK5WJbFPHuU46Zze5HXtHZ3DWU/vE+t
 EMXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=AL7Xo7O/pQKUNo42UZGV/pFyRrG+zXus+zNwtHz5W9I=;
 b=llNqi+ryde/qxk+wURT/u+AWsB7M3XpRwUqAaz9K6JhxQnYNAV/93+pbXfDRoHqvhJ
 VOCCEnPp2i/bLHKFcJ4uCodS5nbe8tx2eijdrgaYsQPH64BBgC72CFCAPJaD2Bqestqp
 GnhAYKylmOxd8rbkqynbDdbzGgFZvz/remcBz+8hV5dBpl8JuMV3+qZrn3siYIAeAVlL
 Nl42gjAkHx6mmJ9jZF01xSfNd2BOJLpIGxoDsfG1D8Q39BcOxIEFv7v9+hgIz7l7qjbP
 NrmHN5mXK8wluj8UZZsqWkyLUpfDoEAnAh1QrZ8cS/xTIryYCapKz7yjrUlfU8PCcykf
 pbQQ==
X-Gm-Message-State: APjAAAVoNEjVGZhOdiQ6ua+cqc0qTvZJW4WMc+7I6RqgHRwe5iQ1GKLo
 OdK4ehUvhsqLd+NVSpL1xvpxKw==
X-Google-Smtp-Source: APXvYqxnIBRMl9c73z9hygAzKDBeii4Mh/dKY7KAWMtxtYJjPF4p6Ki6tTxIg+HAQN4yYW8gNJPyfw==
X-Received: by 2002:a02:a492:: with SMTP id d18mr19165200jam.27.1566076411809; 
 Sat, 17 Aug 2019 14:13:31 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 i9sm6980372ioe.35.2019.08.17.14.13.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 17 Aug 2019 14:13:31 -0700 (PDT)
Date: Sat, 17 Aug 2019 14:13:30 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 17/26] arch: rely on asm-generic/io.h for default ioremap_*
 definitions
In-Reply-To: <20190817073253.27819-18-hch@lst.de>
Message-ID: <alpine.DEB.2.21.9999.1908171412560.4130@viisi.sifive.com>
References: <20190817073253.27819-1-hch@lst.de>
 <20190817073253.27819-18-hch@lst.de>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190817_141332_652477_AF833C55 
X-CRM114-Status: UNSURE (   7.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org,
 linux-kernel@vger.kernel.org, Guo Ren <guoren@kernel.org>,
 sparclinux@vger.kernel.org, linux-riscv@lists.infradead.org,
 Vincent Chen <deanbo422@gmail.com>, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, linux-hexagon@vger.kernel.org, x86@kernel.org,
 linux-snps-arc@lists.infradead.org, linux-xtensa@linux-xtensa.org,
 Arnd Bergmann <arnd@arndb.de>, linux-m68k@lists.linux-m68k.org,
 openrisc@lists.librecores.org, Greentime Hu <green.hu@gmail.com>,
 linux-mtd@lists.infradead.org, Guan Xuetao <gxt@pku.edu.cn>,
 linux-arm-kernel@lists.infradead.org, Michal Simek <monstr@monstr.eu>,
 linux-parisc@vger.kernel.org, linux-mips@vger.kernel.org,
 linux-alpha@vger.kernel.org, nios2-dev@lists.rocketboards.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sat, 17 Aug 2019, Christoph Hellwig wrote:

> Various architectures that use asm-generic/io.h still defined their
> own default versions of ioremap_nocache, ioremap_wt and ioremap_wc
> that point back to plain ioremap directly or indirectly.  Remove these
> definitions and rely on asm-generic/io.h instead.  For this to work
> the backup ioremap_* defintions needs to be changed to purely cpp
> macros instea of inlines to cover for architectures like openrisc
> that only define ioremap after including <asm-generic/io.h>.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Reviewed-by: Paul Walmsley <paul.walmsley@sifive.com>
Tested-by: Paul Walmsley <paul.walmsley@sifive.com> # rv32, rv64 boot
Acked-by: Paul Walmsley <paul.walmsley@sifive.com> # arch/riscv


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
