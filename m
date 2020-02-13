Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D72015B6F8
	for <lists+linux-riscv@lfdr.de>; Thu, 13 Feb 2020 03:03:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:References:Message-ID:In-Reply-To:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ClKs9SGdw6lO6lJ6Stg9PvZvQA5b9QmNaC8zh1MC9nI=; b=Wws7ES4vOFFWnSt7cFd7sa2qt
	7OmKffZxikZ5cp9H9fMOHVHTQVTOQGVONA3VHpagSXxd+Tgx15aUZ384+ofzymcTtQDdcpk0PE/oW
	RGZq44+bIHi2F9bbLmCqTaejWG0zaEvxQDdR3p1PH/XLtvAoCoGWx8Cz7qhZsaI8A2fopyKb0C1qK
	RVltWgkuTMrZvqtGkMYnEPrXIJheAL9wLBkDmxiWqWBM3nb9/oD7tqKBTN6p9lf4akCQlgJ+PmDp6
	ltn2uFQWwsjDOsmEqUxhbncHhKkWMxJjlcy1fYpUta9G+v643mNgiUneAQ2lqD74DGQsM3ms+kiJQ
	PXKi23c6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j23qE-0006R9-W9; Thu, 13 Feb 2020 02:02:59 +0000
Received: from mail-il1-x133.google.com ([2607:f8b0:4864:20::133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j23qA-0006PZ-Ej
 for linux-riscv@lists.infradead.org; Thu, 13 Feb 2020 02:02:55 +0000
Received: by mail-il1-x133.google.com with SMTP id p8so3553605iln.12
 for <linux-riscv@lists.infradead.org>; Wed, 12 Feb 2020 18:02:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=ClKs9SGdw6lO6lJ6Stg9PvZvQA5b9QmNaC8zh1MC9nI=;
 b=QSP817dcw3KGCXDtFQc0vsjJ5DHYdnVLl/raPFhRsxoD0qlWhVwvDMJILn6UyNJ8ep
 sk7woKinDUD946fU8WKE+/ZNuCECT3jgheZ/RbS09SMdudvhte8l38Nvc2R9j1Hpoy6o
 wJVYdw7EFFDlOLSY3eLD6r305LIiEf988v6eN5c2ObR02DVeNNqOhpfq+Bxkkor7rB8f
 21ccmAbxUoJVAs2ad0vJDUFli5VOoCMO+eGoYMd/cl4SDgJd/z3r6sHgr4+L6c9iAlzH
 Fw83yjSKouIOpKehke+8ChF01gvPn3IAnKVI0fSQ9D+zUGymHW82+xQkwJz4AFSlnOjF
 WPTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=ClKs9SGdw6lO6lJ6Stg9PvZvQA5b9QmNaC8zh1MC9nI=;
 b=g+nRpuf2Lf5UCfYNbXvWzZyZDL7g83lTbWZbfr57kERc83IN66vBdBGyGzZ9KxVV3b
 ScdGzRa1q9WqBwOFONk/IZ9W7lD0j0rlaAMk3Ksc0eZZJ66b5009XmuMzhzIbvLV9sU+
 woUZGrD/26/x05x+0IK3Oc4aIrXM5zviivCQ7T+5ubS/vV/YwJ6zo3hdl5pDWi2Rm4Qg
 sCDvsIO6w9OHItd7ElnRE1Rt6JpZkQrm1t3Iihh3QGzHL32cbptYiORy5JWv9Nbs1FH7
 GBxI+2waFdBxOHOxRBaLSfD0ile2qeXYaA5QBoqfmAtrZCDv3bosLC6d9hHYg1drZjnN
 9lRg==
X-Gm-Message-State: APjAAAX/rux1gr3toKCINW9hqD4Dg/vMQoA+N4HxsnGdWKa2CeK+d30W
 qwyW5vDmncmmN6dO97Pn/cWZGHqqC/w=
X-Google-Smtp-Source: APXvYqyTNdu0uYx67IO6FmCJ8JfdzS42KeqSysouQn55t+AtnHQ6XIXt38XrCQKSm1DMGHhD0lzqOQ==
X-Received: by 2002:a92:bf12:: with SMTP id z18mr13730514ilh.7.1581559373074; 
 Wed, 12 Feb 2020 18:02:53 -0800 (PST)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id 9sm264442ion.18.2020.02.12.18.02.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 12 Feb 2020 18:02:52 -0800 (PST)
Date: Wed, 12 Feb 2020 18:02:51 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Atish Patra <atishp@atishpatra.org>
Subject: Re: Errors and segmentation fault while building Golang on Kernel
 after v5.4-rc3
In-Reply-To: <CAOnJCULxNeuS3v1UEFAC_uG4heQfR3QCK-STv48LCK1pbH-18A@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.9999.2002121759400.106455@viisi.sifive.com>
References: <CADnnUqfDnkvCJVqBkDw+gV7_zs5Q_Mb3anQTu+UujjJ8bBk+ng@mail.gmail.com>
 <CAEn-LTrSXHdfp9OPGRSoJCfi8D8Cg8FqS=_-JYpDatAT0X5C0w@mail.gmail.com>
 <CADnnUqciAtweH6KqxvK7Z5ZL-uqOQHujWQBrt+aj2y+31BpuHQ@mail.gmail.com>
 <CADnnUqe1GrqJ5EUQQoPp063bs9SqQkHUSqK_hcWqpkJQcxySTg@mail.gmail.com>
 <CAOnJCULxNeuS3v1UEFAC_uG4heQfR3QCK-STv48LCK1pbH-18A@mail.gmail.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_180254_553437_E1A99D77 
X-CRM114-Status: UNSURE (   7.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:133 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Carlos Eduardo de Paula <me@carlosedp.com>,
 David Abdurachmanov <david.abdurachmanov@gmail.com>,
 David Abdurachmanov <david.abdurachmanov@sifive.com>,
 Palmer Dabbelt <palmerdabbelt@google.com>, Joel Sing <joel@sing.id.au>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi folks, sorry for the late response.

On Fri, 31 Jan 2020, Atish Patra wrote:

> You might be hitting the tlb flushing hardware errata on unleashed. 
> IIRC, anything other than full tlb flush is broken on unleashed. I don't 
> have the exact errata number or a link that I can point to. May be Paul 
> or somebody else from sifive can share that so that we can document it 
> as well.

This is correct: full TLB flushes are required on HiFive Unleashed, even 
for smaller ranges.  SiFive hasn't officially published the erratum yet.  
This is probably the closest thing to it that is currently public:

https://github.com/chipsalliance/rocket-chip/commit/592fe534fb8d7243a7ba636a4577c7b018ee131b


- Paul

