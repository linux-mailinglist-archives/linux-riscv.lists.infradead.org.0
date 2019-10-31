Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81B02EBB50
	for <lists+linux-riscv@lfdr.de>; Fri,  1 Nov 2019 00:57:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CzsEnQgbKSBd98Bd9K8yCmb8BeYltfGDq4YJXJj/vAA=; b=GeXzPMpkz/6Z/c
	5ho/hNuXxo0dTp0eGh7ft9l3TVNwAZH2Yk2qskHnO5GjpmuKM0PhAsAIoOyTuAbdpcTyZaisWpNCA
	MKfTnYAbLLmQ5h/7srNoKwPDCz90vGbc+4Ni8CCjcIdU3W/hPZ7tyu/9erVyia8ypDolJn+TmzQHh
	czTvZ61s81+G7E7Kaa0pK5mUfyHDYSOBN8vqvrdZPbLVwxedDGYRSeqnNi0NXTdlwbd1TeaXKjaLW
	FD6CEy7pOSDcY0+2Wu4E8b2RlP/YPiwCJDAMwpsnmRY2y92q955YjpfSdYLGkOypm5zRvjZh8AsLh
	KDpFx06eO52/v/6ZhIEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQKK7-0001Pz-O3; Thu, 31 Oct 2019 23:57:51 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQKK4-0001PU-Vu
 for linux-riscv@lists.infradead.org; Thu, 31 Oct 2019 23:57:50 +0000
Received: by mail-io1-xd43.google.com with SMTP id k1so8942187iom.9
 for <linux-riscv@lists.infradead.org>; Thu, 31 Oct 2019 16:57:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=DlWmb7IgZmhk+yp3PdCqAG1wjzyXN6dB08lLnHa3HSI=;
 b=QKg7HV2pAE7DIHMgc/9tZeYwmdgbo2E+YYpv/47wUW17mWxHMTJ5yDYC1ruwzxtcBi
 t9+kMhToecgxgoI9nhoVEw48Li/xVty1stCAtxtG2RovvSqv6rBCW78Ehp2+j5EmcFIs
 UOsW5rIqW+axEbyd0M32o/mbx1WjWmbDfpaeJM3ZPxA0i4TfejI2Ms4I4Fk4TkLTCXOk
 E6jErckYSrZ5IsP2d9+KaHBP6/LFhTB5wKaR74Ro+UGxej9RmD+qE31b37b6ceScIvMQ
 8HLgAIs4bzDWhGXenL4fkBDEmp1SRIC7UgIcF8wSRhSbW5f+nKIPRZm7EB3gfwyDL2or
 mXDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=DlWmb7IgZmhk+yp3PdCqAG1wjzyXN6dB08lLnHa3HSI=;
 b=APFL7qrXv2dW1JC3Ja5KsuG3Dws36BojcI/OWUlwR7IMj28XLueU86gfUMFa+wNO7L
 Gik0pdezQZ/1ZDn1UHx2qNqkL+DG91PWdFWI/2uh2UFvOWOoTtHrY6lRyWFdra5XkG+A
 Xi+ikPIW08IJnjb8qNRl5Ct3OhjsmoKfmw/FWz8e1u08eDAD/xu8n+XSd0f6SlN0eXM+
 ukDTtpZ19jjNtyzYcb8Op32t1cA7AuWZcg8BSMrWvYRcvRd1HeZsa7Aei4/DRgG78/hN
 2vI/LqkRzHxF/hqSvMTyiryWP7WkeBlxubImLhWtK24htrS5U+DeRb6LoZJcM/CEZ6d2
 1kLg==
X-Gm-Message-State: APjAAAVzwBXVkw83he/n6lWlAzpwd78imb/qQu0BwJG6nA5fcl1scYsz
 0aHhWPRvY7W/KBZrx4vKb8nPxw==
X-Google-Smtp-Source: APXvYqy/KVTA2A/G8TC2Xo2QaQ5wgHyPiwtcrr4nHibTrr61rJ7aezpdz/Jbn9eXGIwUvSRXBQWkrQ==
X-Received: by 2002:a05:6638:da:: with SMTP id
 w26mr5957124jao.58.1572566267869; 
 Thu, 31 Oct 2019 16:57:47 -0700 (PDT)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id s70sm807595ili.13.2019.10.31.16.57.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 31 Oct 2019 16:57:47 -0700 (PDT)
Date: Thu, 31 Oct 2019 16:57:45 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 05/12] riscv: implement remote sfence.i using IPIs
In-Reply-To: <20191028121043.22934-6-hch@lst.de>
Message-ID: <alpine.DEB.2.21.9999.1910311657150.25874@viisi.sifive.com>
References: <20191028121043.22934-1-hch@lst.de>
 <20191028121043.22934-6-hch@lst.de>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_165749_026891_34F12662 
X-CRM114-Status: UNSURE (   9.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: brainfault.org]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: brainfault.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Anup Patel <anup@brainfault.org>, Damien Le Moal <damien.lemoal@wdc.com>,
 Palmer Dabbelt <palmer@sifive.com>, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 28 Oct 2019, Christoph Hellwig wrote:

> The RISC-V ISA only supports flushing the instruction cache for the
> local CPU core.  Currently we always offload the remote TLB flushing to
> the SBI, which then issues an IPI under the hoods.  But with M-mode
> we do not have an SBI so we have to do it ourselves.   IPI to the
> other nodes using the existing kernel helpers instead if we have
> native clint support and thus can IPI directly from the kernel.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> Reviewed-by: Anup Patel <anup@brainfault.org>

Thanks, queued for v5.5-rc1 with a minor fix to one of the code comments.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
