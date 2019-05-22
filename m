Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54BD226885
	for <lists+linux-riscv@lfdr.de>; Wed, 22 May 2019 18:42:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DuBfZ1GIHbj0hjrizx+Q7H33qckTKJK+IwtUgIBKZT0=; b=GifbXsftfk+NW+
	ErTei8o4tUWTNC27l4dHf5EV3i55Te+TajO4yQeTu+Tyz1G1eD7RxUTwDv5krWCLpUgXrE4cfqGUa
	h8hj4ukZgqoqNKwng3xHPYP+sUWg8tszd8FwWFHfsUVbnkAeftIaMquUsp5EkKS7ogYcrC8dYmtPV
	B0XyJhylZRgoFyEmp3hjYXzOEYiETQ7KXGVnB5lnZdB3PvC/tLsEAbVqi8qULzlbIHnMcMsSLuEWR
	7faxnGHPsvYrANIulwn18XbB0BewwRZZ5QSQ4aDGoiwppcCYoIrIlvHsHvfIOXV+QPA1HnJEfOEZV
	s1nwWtX++RBhAe1YNGVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTUK9-00041w-NK; Wed, 22 May 2019 16:42:41 +0000
Received: from mail-io1-xd36.google.com ([2607:f8b0:4864:20::d36])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTUK5-00040M-94
 for linux-riscv@lists.infradead.org; Wed, 22 May 2019 16:42:39 +0000
Received: by mail-io1-xd36.google.com with SMTP id p2so2415572iol.2
 for <linux-riscv@lists.infradead.org>; Wed, 22 May 2019 09:42:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=B/3Ppt3k79FNO2L/s3r4K1hzS09ALDDdjX6rER4lCro=;
 b=f4P0CvMHpuLDlbjjfUMOTq9Qi/+Qw0WM7wY8rz8dIRcipKJwr4oAstobMqGym6SyUt
 EoFoW3BNRiqr8pU2NT5HMGAqeKgalej1LduhOalQmYgIln7ZNxF2lYPNQ4TN1hAG3MRr
 tDWBguwD5+5qoCO4O6RhTKLvwTqLyE6alnuVX5UJCuP3VSGnG0eqewP2Z+XBGdgFhci7
 49CcxjIW7REI5a1Jx3ERdpj0YXoY4N2hkCJjhR88w2zUVrbYbNVFHdS6lSkglot+n4CC
 K8ZtJuzFneHLqOJg7nxifSjUFMMQF/VDBQX0Ibf80kgGIHgvYzLSChRxC7I1CW+mQJXM
 fy0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=B/3Ppt3k79FNO2L/s3r4K1hzS09ALDDdjX6rER4lCro=;
 b=rQIrxXxXoPDTXVomyxr2Rp3U8ZC7OVRa2FHHjXVZvcRZ45pDFKT4OGep4GTzkejVT/
 aGCTSrU0uTPrmBithoXkH+4LvMnA1NOHHsoTBJWHZSefI/jbln8s6TPTkIXVYshmHJjc
 e0wZrLogSNhSkN0BtfpmIOKuqjdZJWvtM3B1El2R+WPDopzUEtME8Z/VD5taT8XI5SUi
 mEAthH3FDBj4kfrJOzuWbHnzqq545INJvlWuBXmYl3vAhIkWR0Tg4AIrpSb2fW0Df2Ek
 DNRzlkXAV7++8TIQzb7Ydq4vLnz3hf1QcSw7BSqBlQdcwpbCoa8UkhLE0D11vAEh7EsU
 oe9Q==
X-Gm-Message-State: APjAAAWx83nUD24x3iNv64SoOXZMctVJqBu62b249TB/F+qtPXjgG8L1
 vIquG/4FDyznA1373gq0PnIW9lCQfHU=
X-Google-Smtp-Source: APXvYqxiUSmNfc6a+lUQ9SpLf2nKodmdzjDr0DA+wl9S5b9OntsSpoLSg6auVmAgi7C+4nPH2cu+Uw==
X-Received: by 2002:a6b:c411:: with SMTP id y17mr18170495ioa.265.1558543356100; 
 Wed, 22 May 2019 09:42:36 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 k5sm7617211iob.32.2019.05.22.09.42.35
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 22 May 2019 09:42:35 -0700 (PDT)
Date: Wed, 22 May 2019 09:42:34 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Atish Patra <atish.patra@wdc.com>
Subject: Re: 5.2-rc1 boot on Unleashed
In-Reply-To: <5c1ffb76-b18a-dbae-d3ad-f3d2cd41ee44@wdc.com>
Message-ID: <alpine.DEB.2.21.9999.1905220942040.20842@viisi.sifive.com>
References: <5c1ffb76-b18a-dbae-d3ad-f3d2cd41ee44@wdc.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_094237_385032_BB28990B 
X-CRM114-Status: UNSURE (   6.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d36 listed in]
 [list.dnswl.org]
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
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: =?ISO-8859-15?Q?Bj=F6rn_T=F6pel?= <bjorn.topel@gmail.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Palmer Dabbelt <palmer@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 20 May 2019, Atish Patra wrote:

> @Paul, @Palmer: Can SiFive share the updated FSBL binary so that everybody can
> use the upstream clock drivers without having to rebuild FSBL by hand?

Am checking on this now and hope to have some conclusion on it this week.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
