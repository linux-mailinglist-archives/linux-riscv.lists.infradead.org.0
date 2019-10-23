Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2187DE2667
	for <lists+linux-riscv@lfdr.de>; Thu, 24 Oct 2019 00:32:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:References:Message-ID:In-Reply-To:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yvfnj/FV/u2SXboTgMkC1oKCipz2E1sUyFvBhO3TkiY=; b=d6QQ8kcPQ4wPLIPJklwcbFQ5c
	UL3umahqHtkf1pW2QO/fkMtGmyli8lp8raZ6YBjVoHH4EfLM/jklHNm4u/h6CMvRiEFMeBiXFUt3v
	IR6qYsaI65j6HOUatUJjWqyc2L2Tp/jqu9b+XuJ3z3427EmHc7lVBTAk+UN26JyV4kH9g92CNEDLF
	za+4HF6mPjKKozuEEGw9P6GSj0Y9GTZBa0OB4JjPX/OiFzkezBKq/BFa0iBtv1a2Xu4nJR40m4YhA
	CsJ5vxUZFp6zE2cfeS25y1zxzyKVpsKNRNfs7OP3SFrBHCpessw24KMZgDGGqoNEC3uIDE+aPmPWZ
	LamjyfBzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNPBC-0004Rc-8L; Wed, 23 Oct 2019 22:32:34 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNPB9-0004RC-88
 for linux-riscv@lists.infradead.org; Wed, 23 Oct 2019 22:32:32 +0000
Received: by mail-io1-xd42.google.com with SMTP id p6so18784572iod.7
 for <linux-riscv@lists.infradead.org>; Wed, 23 Oct 2019 15:32:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=7cbIsGfkqhBHDWvtTguhXtuuBK8gPXcdqakL847UDEs=;
 b=BG0rvQs3Wz4MRf7d1g0eMVHiI5O3zYGmQHuTyAH+t10Vwfd7M9EJHjbEHf0chlmsjn
 vw192TjYMGE3sQ2UkfUdFsGEYDJdB7yb1LdQHghyvRm+2vTjgzMRlFpt0Gl2PrAyKAX6
 a9b7ABnRARSbNzerTzjePufXdhjqB3elNMkhl3fh6LfVDAkvJtXKnOJjI+iIMRbD2UXn
 E0tJuP9MCBgb67b9Qh8oFpcVjLnx+1K1urJ5AZg2mL9s0C5ryLziiezzCsoAMX6smeLC
 HhCci4UtySrOyO1tF5HSeJPhIm2/zyffoUXvtiXwrnOkCo0ryASnOd56P0WLXjIdcKil
 O4PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=7cbIsGfkqhBHDWvtTguhXtuuBK8gPXcdqakL847UDEs=;
 b=bXoEtvJRMEhjG6eJq/52kyhAtqRVfgC6J27V42Hr2Ir/9yszCljTtpUscH9Q2qnthX
 pL8kGh353Gh/xFeLmmYIH3gCoxWseCmlHftMr17zgyGc3gICgg2mr1+o1LbuWyy4i2+s
 X7ejIT42KY3pQYiYgo8dbvORNnOQQb3HIz6mD5e1ulH2hPPufQMthgFWhjYi5zAaj47i
 wd5sCTtyq9/fVa4m0ps7umBXEiPX9Lj3QtUtptKBeQxKTRXLVKV4uZ1je1ve0Rhgatz+
 m3tK27xE0Hyzm0hHD8JKdRsmjsuqQ3GeijHd2UPFBdCi+n+8uqvTL3+tsV9rLvmZa6eb
 oIoA==
X-Gm-Message-State: APjAAAVjtNinbIOJomkSlODUUQtSBK9xzLE9zp6y24Vl3Z7q9NfP+0c1
 U3v+TcChJJhzRD5SwVEwL2+FoQ==
X-Google-Smtp-Source: APXvYqz7IhPLaMV1MS+oQ4RFxeNufaobr3I/FuOVjUA+OvozN2JieVdy/hq3E+oQjuOdusnZqaYQsA==
X-Received: by 2002:a6b:37c6:: with SMTP id e189mr5746348ioa.122.1571869949772; 
 Wed, 23 Oct 2019 15:32:29 -0700 (PDT)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id z18sm2325025iob.47.2019.10.23.15.32.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Oct 2019 15:32:29 -0700 (PDT)
Date: Wed, 23 Oct 2019 15:32:26 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Greentime Hu <green.hu@gmail.com>
Subject: Re: [PATCH v3 5/8] riscv: mark some code and data as file-static
In-Reply-To: <CAEbi=3dk0R3HMnqsK1mSm2bewecdHm279f9zEq1pHWLPo9tdAg@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.9999.1910231531480.6074@viisi.sifive.com>
References: <20191018080841.26712-1-paul.walmsley@sifive.com>
 <20191018080841.26712-6-paul.walmsley@sifive.com>
 <CAEbi=3dk0R3HMnqsK1mSm2bewecdHm279f9zEq1pHWLPo9tdAg@mail.gmail.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1254959037-1571869946=:6074"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_153231_291850_18DC8D84 
X-CRM114-Status: UNSURE (   9.73  )
X-CRM114-Notice: Please train this message.
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Greentime Hu <greentime.hu@sifive.com>, linux-riscv@lists.infradead.org,
 Guo Ren <guoren@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Mao Han <han_mao@c-sky.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1254959037-1571869946=:6074
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: QUOTED-PRINTABLE

On Wed, 23 Oct 2019, Greentime Hu wrote:

> Paul Walmsley <paul.walmsley@sifive.com> =E6=96=BC 2019=E5=B9=B410=E6=9C=
=8819=E6=97=A5 =E9=80=B1=E5=85=AD =E4=B8=8B=E5=8D=883:58=E5=AF=AB=E9=81=93=
=EF=BC=9A
> >
> > Several functions and arrays which are only used in the files in which
> > they are declared are missing "static" qualifiers.  Warnings for these
> > symbols are reported by sparse:
> >
> > arch/riscv/kernel/stacktrace.c:22:14: warning: symbol 'walk_stackframe'=
 was not declared. Should it be static?

[ ... ]

> I think walk_stackframe() could not be static because it will be used
> in perf_callchain.c.

Thanks Greentime - will update the patch.


- Paul
--8323329-1254959037-1571869946=:6074
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv

--8323329-1254959037-1571869946=:6074--

