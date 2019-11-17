Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5A5EFFC48
	for <lists+linux-riscv@lfdr.de>; Mon, 18 Nov 2019 00:36:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3tTmOBI10DhzFVUKnqQy5fGVISGuJjrmzv/lRHOWHPY=; b=M7fnPW2hlbgKhz
	dS0XvWhO7sMV17L5+Ot89ZI0tk/4oXUV+0108oTR9pYPOdTQrhN16jwYn7OddG4IFNqiLftOoP443
	3u0VBOa+Hesq810Htw3wa7sI4rW2+dMc2Bs2rAwH7WCsgnRb2HWruB3Jm8zpoShZa2kjYiJWGN2nI
	yYbdb2A+0nGQhKrUYt0+sGLYsvt67Guvaou9DYe8VhMk97OLWOIhhmdIYeKFnSWfIUE3tKEbC9zbf
	Jo0tDnKlMG0RV79oND1x61hH75tFm0mbS5gqYCikkVcHcz/HulHZWtXZnfc5i8U76kmgz0NveDW6U
	md3qxI2gNsvPc5WeSNVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWU5g-0005xZ-24; Sun, 17 Nov 2019 23:36:24 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWU5d-0005x3-FK
 for linux-riscv@lists.infradead.org; Sun, 17 Nov 2019 23:36:22 +0000
Received: by mail-il1-x144.google.com with SMTP id q15so14298392ils.8
 for <linux-riscv@lists.infradead.org>; Sun, 17 Nov 2019 15:36:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=msWSzD8IfTAYrl4tYtx34pXBNjkOEIKpiBWKfcfxxgY=;
 b=UtE6bh2ev/JFO+i+hDnU0aVPBHoI+suqm0t2ovLD19rNgUhRaNpp+IXSGPaFkvSkLq
 XgYT2OjAhl1FCEdZLEhNN54EVu0spzkuDQKzhZjsjmy2+UiQsLH2eWpOJ6sgZ9kas4ej
 r/sHBXUjGE+MEj6j2+32iAIecBsQceIPzhVCgukTvzEtASRDpsjXymPbtm5nCscAM6Md
 pMCVirZGMJO+1EV9Y4RBAYmrCSLtXR5rRoEDNqgDYds+5nsRPPHbxQzuSlRr7r6ZNma0
 botnVNVahkGGGtdtBS/ZMreuwts1H2GIjakW1sMc18U5fEgCZdhBaDkHLIjRo+f4soAa
 laBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=msWSzD8IfTAYrl4tYtx34pXBNjkOEIKpiBWKfcfxxgY=;
 b=cd42y9NNpDYY9RNvGfwJqfrXeFvhMuZttp/kCBd1JycBNToW8xxNcKi9PTDaQf+bx7
 Vd2teWrLZbZV8TKoniL2mkanSkkcBVum3nqd/nz0exX7pEH1qhcV/wGfSawZD1bJ78Ck
 RJDLv2m7qrEFYfGUYOE6uj+LRzXrmD8ADnZJs9IetjzKSuFmoYcm3l8bwrygilRupeJg
 tCnX7P8AnH8bpvPRVDMMiwqlvg3BPuaVL1XnYS03Jr0k3rfLeh3X6mVofgap+BcJhFNq
 Wk3UQmnHYgQWJNTcGw4eLqXJfrS+xm+LsohGW/TtzMwOJ8RfgBiOdVOUB0KYaP/0N4NC
 uQxQ==
X-Gm-Message-State: APjAAAWa9ngcmSLThXEVYuky4LVHsSH2wGe9RWJPEPgHpIbUkqd8lFGn
 JhRRiZNWIHZh3b/yltIePrX/Dw==
X-Google-Smtp-Source: APXvYqyJs9bWjm0GDpDmcty6YsVNmG1z32hUAsZ+dTXTjuPsJfqqtHxzoGKfzjAiw1BPxG/Vg4uOKw==
X-Received: by 2002:a92:c981:: with SMTP id y1mr12624894iln.53.1574033779357; 
 Sun, 17 Nov 2019 15:36:19 -0800 (PST)
Received: from localhost ([2601:8c4:0:9294:cb6f:4cf:b239:2fee])
 by smtp.gmail.com with ESMTPSA id v15sm3967781ilk.8.2019.11.17.15.36.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 17 Nov 2019 15:36:18 -0800 (PST)
Date: Sun, 17 Nov 2019 15:36:15 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH] riscv: separate MMIO functions into their own header file
In-Reply-To: <20191031155608.GB7270@lst.de>
Message-ID: <alpine.DEB.2.21.9999.1911171533580.3813@viisi.sifive.com>
References: <alpine.DEB.2.21.9999.1910291053450.1601@viisi.sifive.com>
 <20191031155608.GB7270@lst.de>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_153621_520149_B67E32B6 
X-CRM114-Status: UNSURE (   9.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
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
Cc: yash.shah@sifive.com, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 31 Oct 2019, Christoph Hellwig wrote:

> I think it would be a better idea to move the kernel virtual address
> space layout out of pgtable.h into a new header, as pgtable.h pull a lot
> of stuff in.

Agreed that we should do this at some point also.  It looks a bit tricky 
to do this cleanly due to the usage of STRUCT_PAGE_MAX_SHIFT in the 
definition of VMEMMAP_SHIFT, so I've passed on it for the time being.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
