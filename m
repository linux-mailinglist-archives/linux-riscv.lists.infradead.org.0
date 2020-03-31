Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8B7C199A8E
	for <lists+linux-riscv@lfdr.de>; Tue, 31 Mar 2020 17:58:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jfQhccziDudVsLMP6kJ733ATOZ31NAdEJFty0F3uQqA=; b=VmkYJKgyQZoE/81akIJ5vec9p
	j5+SBow4f2Xhy6HT/E4Y5NiFI1MgzYJI+66RqAbiUzATF6cU2oy5MVKgtQXI/6aJqs4ZtnNicZXzW
	Xbfwe0fumCh9LWjKnRWinoVG0CTXVRfS/n67h7M4ajF1f2mzv6Niv+OS1wwlj2iap4Al759Apc/k4
	wSg9uC9pjpkZL6NPU9zxJw7uW73+UKVXADe4LOyUloHMcRpLIBOsQ4DOimo/Be903UjE+uuiCVg5B
	MygPT+HssN1BsY81j1NLPHykT5cjlfoTdsEU51C/8DIKGCScltBT/R/+XKXfkysjLmQ/XfqddBsZn
	jqKbjSrtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJJH5-0001jk-IU; Tue, 31 Mar 2020 15:57:59 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJJGu-0001ZV-Do
 for linux-riscv@lists.infradead.org; Tue, 31 Mar 2020 15:57:53 +0000
Received: by mail-pg1-x543.google.com with SMTP id k191so10502545pgc.13
 for <linux-riscv@lists.infradead.org>; Tue, 31 Mar 2020 08:57:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cs.washington.edu; s=goo201206;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jfQhccziDudVsLMP6kJ733ATOZ31NAdEJFty0F3uQqA=;
 b=PlQeasvJWSo4iQz94dt77xWDMNTQ+jYB7zJRbPPBNjYM5612R+MSy+yWtI+wboPQln
 U1BFVvavpFJ8O79mRN/SrlTA5PjRB0JO6ysbJ1GtuFMkdY5QO9moEBnkW9xb7/Fvwki7
 aKBt4twfTSpIC3oAK7rvmfhTng3NCSJDnzGfA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jfQhccziDudVsLMP6kJ733ATOZ31NAdEJFty0F3uQqA=;
 b=WHkwI8TswHV8xHTLAvBTbGwZuTOqwQlBoJBNMXhcbN8XCAAgztvEgsi2DY51OocLcW
 48tDqR2SmxlS149Omq4Tl9elWli+WgQf/cepZ88OX/5l1a5utYx13pIIKKSulmFRoAYY
 7ozi84J4H/VOt7bV4PjR5aWpA9ImLwe5uKBy2qumqo3f8BMgc/R1aBmjHWr28szz2Uoo
 UNvC5NKGawtoc9I3ehVoRkTfgK5WGsiEEECWvP8UIDmcFwFjPpfJAALA5dw1O47pjbzU
 7LxvHwG2ughYQBu7q1eaE50MMMn9EK6XEjlCpA2DsP0pJ7qQOFfokdhSEjOmw0NqBfJr
 Uieg==
X-Gm-Message-State: AGi0PuaMvI9vCnqmfYP6lhzKYtQcCJHJoj/jTU1HAUiH1uVO3nFFbo93
 oW+X6JOw2//CUehk+YfR10ETfCPU+LRyAsIi3SGQP5zN
X-Google-Smtp-Source: ADFU+vuFxmGgOn08tmoANgBI3LNTetni9UTrAwOiEISPhiM5Omw//ihMU/JryRy+gVy9Ac1Y5taJ1VHJyEY+hsM2LGs=
X-Received: by 2002:a05:6e02:551:: with SMTP id
 i17mr16403204ils.280.1585666665915; 
 Tue, 31 Mar 2020 07:57:45 -0700 (PDT)
MIME-Version: 1.0
References: <20200331101046.23252-1-bjorn.topel@gmail.com>
In-Reply-To: <20200331101046.23252-1-bjorn.topel@gmail.com>
From: Luke Nelson <lukenels@cs.washington.edu>
Date: Tue, 31 Mar 2020 07:57:35 -0700
Message-ID: <CADasFoDZq=+34MSjPD7gqEDhW8Zm_zFWAamHZc7ZsAeYT2=Lrg@mail.gmail.com>
Subject: Re: [PATCH bpf] riscv: remove BPF JIT for nommu builds
To: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_085748_546892_48116C88 
X-CRM114-Status: UNSURE (   3.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Damien.LeMoal@wdc.com, kbuild test robot <lkp@intel.com>,
 Daniel Borkmann <daniel@iogearbox.net>, Netdev <netdev@vger.kernel.org>,
 Alexei Starovoitov <ast@kernel.org>, hch@infradead.org,
 bpf <bpf@vger.kernel.org>, linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Thanks for looking into this!

Acked-by: Luke Nelson <luke.r.nels@gmail.com>

