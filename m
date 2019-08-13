Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB9FC8BEC8
	for <lists+linux-riscv@lfdr.de>; Tue, 13 Aug 2019 18:39:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lg9zj3uY3SvGvTMHSslH8r3BwPMig5Xcfv36I2Gaj9Y=; b=Bh38o1KzryWknP
	Qlb1E7LROvneFfRWM+33LWGYjOu0S7utXlBK0MsNAke9l6uqQFDxGP74HQBBmEa+FZdtDTtvypy4W
	5QJxZC+P3Tm135QfTsicx75WMUfjdC6NA32dIT2OQAwhBI3PsrPwfnOBa1yQOuIXkuHnV7MRyY6OA
	Xxx+wfhpTfoaiCDXXiRePuDXuVmLcKK8nykRcaJBCF6jxhoDduOqRHCKJj5e2rk2iDobpC2rJSfCd
	NfKnImz1ib2PzIF1ER1c6N56RfY2RVy0PE8ObjIC0jXkXE5bdnsu7Yz7O2fewOfLCr8eCIJ29K6o1
	d5ftnJAf3bSowgzeJe1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxZpr-0007Mm-4d; Tue, 13 Aug 2019 16:39:47 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxZpo-0007M0-17
 for linux-riscv@lists.infradead.org; Tue, 13 Aug 2019 16:39:45 +0000
Received: by mail-ot1-x343.google.com with SMTP id e12so30686903otp.10
 for <linux-riscv@lists.infradead.org>; Tue, 13 Aug 2019 09:39:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=I69b5JV+phZxzHOcqYgo6XHHHWtifAb0O34LlDzNHJA=;
 b=EYZczN2l+SqgeTR3GO7GAxvQEc8bVCSyDaCrU9+64khCt4jyBvD8MNRcIhomdraDeP
 7BKBB1AqvgHbi2qq9U2Iw6E6749KNtRkgofzb4RE+czdKJORnjJngYtY4yjPrNyrBpNz
 jwgpxgNIDDN+l/P1LHXaKoL/lgIV1M6S0eUHMlTSjoQ7J0MAUyb4itLv66hBtYUe7lqz
 v//euY0qskbOTYEncKVgZMYHdzDBswGtY2kZW6PDJ/gAIeyEQbLeJKpubKOOcoi8dQn4
 qUZ3IHLfJfDhcAtLNXIxAn/duIcW+T+HCk4eNzPgKRvwQdGJwNlLr7OyrsuCeFZtDA+t
 qG/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=I69b5JV+phZxzHOcqYgo6XHHHWtifAb0O34LlDzNHJA=;
 b=qnPdcIr+mTWcKAS2o0iFM+vMWIh1vsOjngz/7ixBBnun8fq8xlifVBCWiCP4e+tZAh
 vLITpvIMIIhqERcC/2EJmKWAtr2K7B+KJLjir49UvzC8Htz+/4okxpj4Bztw9cITAhx6
 eEvA+GmEU9cNaUATZBEgCTE7yZzjbk0CMWstggIVJFvycAPLowiz5i2NR1EabUSIPQgS
 Qi/1jbS2wt+YgFiL74CpJA71Yn+KCm7pqhr78TcA2kf1c/KieXubnO8AuNYgrT1JF5Dh
 Ez7KGkYgzeI8zB3Rsh7LKmdOdUgLi8G0exNBeNEeUfBioGVuRYOM2p/RHWW0/lKcSJEH
 WgvQ==
X-Gm-Message-State: APjAAAWzmbz1SsuuaXORejiLe1oQN7jTmtruMw0jZ9KaiFe6xl4tYFwB
 FTIP6cPTMIscQNCYk16nT2B3VQ==
X-Google-Smtp-Source: APXvYqzZhud+hR1gsA9k5cTy2mxzBjQ9jW9K5maIofLebjIsNaVBkbaY7+FZgRYGMef7y5DHqPXPYw==
X-Received: by 2002:a5e:8210:: with SMTP id l16mr1641684iom.240.1565714383183; 
 Tue, 13 Aug 2019 09:39:43 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 c13sm22298080iok.84.2019.08.13.09.39.42
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 13 Aug 2019 09:39:42 -0700 (PDT)
Date: Tue, 13 Aug 2019 09:39:41 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Logan Gunthorpe <logang@deltatee.com>
Subject: Re: [PATCH v4 2/2] RISC-V: Implement sparsemem
In-Reply-To: <5506c875-9387-acc9-a7fe-5b7c10036c40@deltatee.com>
Message-ID: <alpine.DEB.2.21.9999.1908130921170.30024@viisi.sifive.com>
References: <20190109203911.7887-1-logang@deltatee.com>
 <20190109203911.7887-3-logang@deltatee.com>
 <CAEbi=3d0RNVKbDUwRL-o70O12XBV7q6n_UT-pLqFoh9omYJZKQ@mail.gmail.com>
 <c4298fdd-6fd6-fa7f-73f7-5ff016788e49@deltatee.com>
 <CAEbi=3cn4+7zk2DU1iRa45CDwTsJYfkAV8jXHf-S7Jz63eYy-A@mail.gmail.com>
 <CAEbi=3eZcgWevpX9VO9ohgxVDFVprk_t52Xbs3-TdtZ+js3NVA@mail.gmail.com>
 <0926a261-520e-4c40-f926-ddd40bb8ce44@deltatee.com>
 <CAEbi=3ebNM-t_vA4OA7KCvQUF08o6VmL1j=kMojVnYsYsN_fBw@mail.gmail.com>
 <e2603558-7b2c-2e5f-e28c-f01782dc4e66@deltatee.com>
 <CAEbi=3d7_xefYaVXEnMJW49Bzdbbmc2+UOwXWrCiBo7YkTAihg@mail.gmail.com>
 <96156909-1453-d487-ff66-a041d67c74d6@deltatee.com>
 <CAEbi=3dC86dhGdwdarS_x+6-5=WPydUBKjo613qRZxKLDAqU_g@mail.gmail.com>
 <5506c875-9387-acc9-a7fe-5b7c10036c40@deltatee.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_093944_081555_81459912 
X-CRM114-Status: UNSURE (   7.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Rob Herring <robh@kernel.org>, Albert Ou <aou@eecs.berkeley.edu>,
 Andrew Waterman <andrew@sifive.com>, Palmer Dabbelt <palmer@sifive.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stephen Bates <sbates@raithlin.com>, linux-mm@vger.kernel.org,
 Greentime Hu <green.hu@gmail.com>, Olof Johansson <olof@lixom.net>,
 greentime.hu@sifive.com, linux-riscv@lists.infradead.org,
 Michael Clark <michaeljclark@mac.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 13 Aug 2019, Logan Gunthorpe wrote:

> On 2019-08-13 12:04 a.m., Greentime Hu wrote:
> 
> > Every architecture with mmu defines their own pfn_valid().
> 
> Not true. Arm64, for example just uses the generic implementation in
> mmzone.h. 

arm64 seems to define their own:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm64/Kconfig#n899

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm64/mm/init.c#n235

While there are many architectures which have their own pfn_valid(); 
oddly, almost none of them set HAVE_ARCH_PFN_VALID ?


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
