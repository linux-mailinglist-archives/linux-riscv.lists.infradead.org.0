Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4056F1250B6
	for <lists+linux-riscv@lfdr.de>; Wed, 18 Dec 2019 19:36:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:References:Message-ID:In-Reply-To:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Y7UoDfvvX2HqTW7Xsj5rsSRAq8b3uYZqG56P5onidP8=; b=TelT1SkyGCPCksJh45nQuaRyN
	NsJMC7PnTNyjr1ErUAZ/wkCAp8FGjKkEyfuziou2grFEQee3aWOMkJfT50nlT58OmBxweZ1fwzphS
	ngQAQuJ8RhdBhQ7cAlLDC2RRVmU9+vlLdfnxBnGjX5F0rgqxIRmve5KosX1kR9PTdD9i7XTbaBxaf
	u+DwnE9C/7q5+QMLJNfRTsabuZoDI7xvgY8x1qX/ccPRQNFsMiMTh+h7dXpKjArBiiv+bxDETqrAC
	1gkXk2ySzut2iQ+RMQ+xoX9BI0QGhRPjAy8p/RMUl2vsRy0zTo9GdO3xZMtD5VPYVAVxlGCZ2TobO
	RliBdDSLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iheB7-0003ZT-Au; Wed, 18 Dec 2019 18:36:09 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iheB3-0003Yn-45
 for linux-riscv@lists.infradead.org; Wed, 18 Dec 2019 18:36:06 +0000
Received: by mail-io1-xd42.google.com with SMTP id n11so1497689iom.9
 for <linux-riscv@lists.infradead.org>; Wed, 18 Dec 2019 10:36:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=Y7UoDfvvX2HqTW7Xsj5rsSRAq8b3uYZqG56P5onidP8=;
 b=aESodwS4Rc8tgxbsUNWdVvZj7N0f6pNQQfDInXOarA1skszJDOqcijgq0JfRmHfmLZ
 i4B8gNJEOvXG32i5flt6av4OrGroKvPVjm+LFM/Ln0cwoYfeWdboAEQR/WN/VEuU6LFQ
 pB55l3DA+Mx7xq7NkySXXjONmGnfK9hnZxpxrbq6xVCpZR8Rsxlq5Tgm51DKfiGhnK8w
 nnMOvkbRqSo8ZsyD4xmlCUIwKi79zVe+7LimiOykoE5w2JvMgZuIswMyEF359qHGmPjT
 m4T0Hp/pXJRrADfZZYNjshs2GgnVdzXJQaMjULFSlobhttUE5hej2qK500fI7vH6jEtO
 hepQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=Y7UoDfvvX2HqTW7Xsj5rsSRAq8b3uYZqG56P5onidP8=;
 b=QfSIOZ1Eb8CEaFLAo5k4MSPeKTVSrxIBuILEZa4O3CpybT2edkftquF35NDW6h9BL/
 X3aoxiVS22jHyY1dAC4+xrQMfO6Gqcy3tq/tF8MJhV+4WvG21UIpVPWuB9Ox1IEW3oGY
 fuWdvwjrOUJvkqmWwq01qAWrGYgWTe5W8iVN22WGkKyq1+/bnnvW0GZ33kqaig0fx75a
 HBLR4b7rpHtka0kZZ7Z0v1+C3VC/x6S/bucEnvh43hjzMyW8qjMxSb2zfIzn0/TPNdTy
 JCyfpqH2+Vfryj4D/DBNHqZanKf/Cvea+ki9zArH6zT1X8e98CB7g7aAJcv3BYGlq93r
 NyoQ==
X-Gm-Message-State: APjAAAXn5FBbHx6w1tyqEZe1X1H87qFCiyFSH+/fit45XdORt9pInohX
 0KwBTtNqNZv8V+9EA7WyE7Tc+w==
X-Google-Smtp-Source: APXvYqyh2Fla+hdRA8p6ZfU6BLMMzNOAxGNOF0009rv3oAyLIaxDtI1aVjabeCotDr9EHgSv1iQMxQ==
X-Received: by 2002:a5e:8345:: with SMTP id y5mr2645645iom.122.1576694160882; 
 Wed, 18 Dec 2019 10:36:00 -0800 (PST)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 w21sm623330ioc.34.2019.12.18.10.36.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Dec 2019 10:36:00 -0800 (PST)
Date: Wed, 18 Dec 2019 10:35:59 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Olof Johansson <olof@lixom.net>
Subject: Re: [PATCH] riscv: change CSR M/S defines to use "X" for prefix
In-Reply-To: <20191218170603.58256-1-olof@lixom.net>
Message-ID: <alpine.DEB.2.21.9999.1912181030090.14542@viisi.sifive.com>
References: <20191218170603.58256-1-olof@lixom.net>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_103605_162959_4288AA4A 
X-CRM114-Status: GOOD (  13.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: damien.lemoal@wdc.com, Albert Ou <aou@eecs.berkeley.edu>,
 jason@lakedaemon.net, maz@kernel.org,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, Palmer Dabbelt <palmer@dabbelt.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 18 Dec 2019, Olof Johansson wrote:

> Commit a4c3733d32a7 ("riscv: abstract out CSR names for supervisor vs
> machine mode") introduced new non-S/M-specific defines for some of the
> CSRs and fields that differ for when you run the kernel in machine or
> supervisor mode.
> 
> One of those was "IRQ_TIMER" (instead of IRQ_S_TIMER/IRQ_M_MTIMER),
> which was generic enough to cause conflicts with other defines in
> drivers. Since it was in csr.h, it ended up getting pulled in through
> fairly generic include files, etc.
> 
> I looked at just renaming those, but for consistency I chose to rename all
> M/S symbols to using 'X' instead of 'S'/'M' in the identifiers instead,
> which gives them all less generic names.

This is what Christoph did originally.  I asked him to rename them to the 
generic versions to align with how we discuss these internally:

https://lore.kernel.org/linux-riscv/alpine.DEB.2.21.9999.1910181647110.21875@viisi.sifive.com/

I'd propose that we just start by prefixing the IRQ_TIMER macros with 
something like "RV_".  By prefixing the macros with a namespace 
identifier, that seems to solve the namespace problem more directly than 
sprinkling Xs around.  Then if it looks like there are other symbols that 
start conflicting, we can do the same in a larger patch for the other 
CSRs.

Of course we could also do the same to all CSRs up front.  Do you have a 
sense of what the current conflict situation is like with those?  The only 
one I'm aware of is with Mobiveil and predated this patch; it was fixed in 
the last merge window as far as I know.



- Paul

