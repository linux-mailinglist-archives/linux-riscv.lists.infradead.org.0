Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B92B6DBFB9
	for <lists+linux-riscv@lfdr.de>; Fri, 18 Oct 2019 10:19:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MtWMvjnMgjlXjHW+Er4iLUmBT7oSUQEAfSElWq4anBk=; b=X6U8ryDknBFkrR
	vmgOwn6eVFPpzexiMrmvVIDwXDfcCK3VOtnLr+KiGefxPnlbTwRtXcpTDsHjPCImg9r2vZlKQUQLU
	6AStb4ROdq+1HFYnJbFi4c3n22ymHw9tUdktPeGDAgvy9uHzpuOyPL3b7z7/pbD71JrrVkg6Gg8so
	Y+y36yv4lIq734lBmr4CmW0SxhqwTfDMfuisi5/Cpy+Ztbmaxd4MxMGiWarLF8BvCGPfi4xws5LLP
	sun89lAZYUt96KptyKIUsb4HWpLVWQbIDkzCddYayXIRoxoYDrULr+LZh6ZDuIaDOuUWrWG98fA3r
	TOP7XjpYocSgFa6NDcUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLNTj-0003SO-6p; Fri, 18 Oct 2019 08:19:19 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLNTf-0003Ra-H2
 for linux-riscv@lists.infradead.org; Fri, 18 Oct 2019 08:19:17 +0000
Received: by mail-io1-xd43.google.com with SMTP id w12so6379878iol.11
 for <linux-riscv@lists.infradead.org>; Fri, 18 Oct 2019 01:19:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=WGR6gGKdLj4dEHPdPs5AUTsaDTf+joh7rvJz3pg5W+4=;
 b=cGRxWKOUdtE+FVh54xi6iHtA03A0lsX1/a1mfMXI71ZJu3crqcwAEl+lxizFIQ/WyV
 3M3aS9b7XFvaeP7OJai6HFJgaHH2BEnrrhMIgaPzaGOz7mOrZcaBhzzMV2TD/+AaRT63
 l3vhP08aEM6/ryy4qAIMUULW6zepIWYQQLC1M+8Jvd2eY9B+F4Wku2M3Ha5IgvtrSccz
 /57HDfY1IcWKFwBDnejKi2v7SwdgIA5q12t7bGAddScWIKrb0SprmDBlKK3bM+T6P5UY
 VBbftGdQ3PLnPHxdKbAbma29Xsqn2wmQ5zGR+qJqwdoyrZPZrTNHXM02hj3Y0hcuyU9k
 k0RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=WGR6gGKdLj4dEHPdPs5AUTsaDTf+joh7rvJz3pg5W+4=;
 b=i74lTaEbdKzBo686/GryzBpUBVQ4W7IqERuJf5JeFy9J3shNYL940lp3mRephqGyLA
 tevU5GueikGLZrcLr58kiqe4ZvzspX5Wq9dv+HW1lC9fraYMuNdlDOdVX3J70udeXSDS
 oWeH0aDtk7qGSoy/e7FXPVdu7Cmw6fhp1tpfQMCjWRW9g4WLWfQYad6GPn1wjj6oY2gs
 sLVtearhi1SnhVsSXJ1u0pCHjCERVr+PBEwSrC0pcUOswIUpwR5WuiOJFqe7YWzyuzoE
 i4nLjH3yu+YW0DZuAgZ710J/z5Rldf838xkWLqY3KWBY3Pf2QIrXks0QPkVJoKc+Inz+
 222g==
X-Gm-Message-State: APjAAAVlGLMmc1aY/BkZNf3k3GvlT22HdvBzgK+j1GWVHHxHrIr//grm
 0xjoJ1/yDDDmLiEG22076GdU8g==
X-Google-Smtp-Source: APXvYqzg2amXejQW+i9jcNd9zVISmlG81QkF/azJj7dk0YWCV0ZFMBFXJ14tIw4FPNHDbSJoeiYrXA==
X-Received: by 2002:a6b:fb12:: with SMTP id h18mr7431244iog.103.1571386754534; 
 Fri, 18 Oct 2019 01:19:14 -0700 (PDT)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id 2sm2217679ilw.50.2019.10.18.01.19.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Oct 2019 01:19:13 -0700 (PDT)
Date: Fri, 18 Oct 2019 01:19:12 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Atish Patra <atish.patra@wdc.com>
Subject: Re: [PATCH v2  1/2] RISC-V: Remove unsupported isa string info print
In-Reply-To: <20191009220058.24964-2-atish.patra@wdc.com>
Message-ID: <alpine.DEB.2.21.9999.1910180118510.21875@viisi.sifive.com>
References: <20191009220058.24964-1-atish.patra@wdc.com>
 <20191009220058.24964-2-atish.patra@wdc.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_011915_573436_802F9B70 
X-CRM114-Status: UNSURE (   9.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Anup Patel <anup@brainfault.org>,
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 Johan Hovold <johan@kernel.org>, Richard Fontana <rfontana@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-riscv@lists.infradead.org, Enrico Weigelt <info@metux.net>,
 Christoph Hellwig <hch@lst.de>, Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 9 Oct 2019, Atish Patra wrote:

> /proc/cpuinfo should just print all the isa string as an information
> instead of determining what is supported or not. ELF hwcap can be
> used by the userspace to figure out that.
> 
> Simplify the isa string printing by removing the unsupported isa string
> print and all related code.
> 
> The relevant discussion can be found at
> http://lists.infradead.org/pipermail/linux-riscv/2019-September/006702.html
> 
> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> Reviewed-by: Christoph Hellwig <hch@lst.de>

Thanks, queued for v5.5-rc1.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
