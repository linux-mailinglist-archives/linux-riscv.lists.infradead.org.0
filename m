Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 498284D9F6
	for <lists+linux-riscv@lfdr.de>; Thu, 20 Jun 2019 21:08:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SGh5dpHKPQA9cXriqa5XE+4LAaTkYlHX2vRdBSIIIzI=; b=VQuePcQfJ6KQsZ
	5cpLLMb6uQOeMxf1xzqtJlmUTbO1rgT0pI0X8fEAqQI02FfqSNltX4aayN46mFpz/s4ajln12yehN
	2/hjWTArbMweXyGZPA7XUlM7TQXs9P49vURX+hJnUmce4X4MMxIM9GweKbq6qWv/aCUSvRNdx/WJh
	DEXXUERqvX7le9aUnqT8Z7nSqXAYFOnwrV2cjW0mfoJkXdyvz6sxMKilqCz9vGm/+KfGU9lGkZS/+
	DZTWfmYgfogMTCwbipFdVKSAj4mCdgSAn3+ciZcD8EI5Rr5SUrG+3oqO6BVGaqbPY1sLG50PwbqJV
	XxgmZJKotOG+Ldd2DwFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he2QF-00079a-FU; Thu, 20 Jun 2019 19:08:35 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he2QB-00079F-D4
 for linux-riscv@lists.infradead.org; Thu, 20 Jun 2019 19:08:33 +0000
Received: by mail-io1-xd43.google.com with SMTP id e3so270601ioc.12
 for <linux-riscv@lists.infradead.org>; Thu, 20 Jun 2019 12:08:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=i4joPjydb3JUza++pjjk9bZ7CF9KLU2dUspf4latQ/A=;
 b=KEulAMUVYEYEt6l8PFI2/AeKC8MhfTgz+wqHnjvdvxeO2+VX1mxngUmuYH2Z9tUTlR
 5kHOz/80L292UPKbctTY5BcxWqZ7WL0I+8o84gkU392vPmxUqxC+V6YilHX0bjr6XIC9
 g2qD6ZYigQ2ennBQ9ZBoZ1E9PAolYm/2SoUrAi3fw5CMqxQx8UfRPg91e2zZGKQIfSWp
 HDNpSPIvm9bV2TX5nJqib/hdIqz/w3JmsTffdviwE73qFyXxpAMG/rtigwcbD2FsyyAN
 rW52IhTgITKcTXAw3ngSL+/I7sdKOlbOGbN40NfZkMxNY9cnppSBf+Uax5+ts2neY86y
 xpcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=i4joPjydb3JUza++pjjk9bZ7CF9KLU2dUspf4latQ/A=;
 b=OW4t5i7ByybIq25wAj2DrJFOz0JMjDypRBugxq6+8mumshUKMv7qvvMTopVMT+hjyt
 nE3abbXSlMqlbbFMoF0zMDJpHLib1+usnoPv/8HwVs9zitOXogVZenF1tH5oDNrEWqdp
 LJ4wD4vxpjFlaUnUFXwtk30L7TfSfmNh6/ZlCkAmUWhwTcuNfvq3+9kuCuZvpweyM+//
 GbnEZRWkpR/GW2tROeiyvW+FvUuHen7zlJTxI8+mEWXG6P8tnwBv7wN2jFpuezzSpe8i
 YcH7lUA20nC7FfBephJsQHz+etKN/hkS1WkD7Nz/c52LjW+lt+JJq5b5ypdZ+u4lORqA
 j2Ew==
X-Gm-Message-State: APjAAAUrN9jMZkI8pI9lk4LQwKJ3kk4OpONwiekr/BnKeJrxKR6992qL
 kcUOje/LxzB5aBExyfs/LyS3bA==
X-Google-Smtp-Source: APXvYqzuvojxoAHMlXeq+3cLH5foqmdWbJRj77QpFbW8f/anOnH20cDBHt1yDnqtcw0SOZwB/WSd1w==
X-Received: by 2002:a5d:8c97:: with SMTP id g23mr50721504ion.250.1561057710378; 
 Thu, 20 Jun 2019 12:08:30 -0700 (PDT)
Received: from [192.168.1.196] ([216.160.37.230])
 by smtp.gmail.com with ESMTPSA id e26sm685013iod.10.2019.06.20.12.08.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 20 Jun 2019 12:08:29 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Re: HiFive Unleashed DT problem with 5.3-rc1 upstream kernel
From: Troy Benjegerdes <troy.benjegerdes@sifive.com>
In-Reply-To: <CAEn-LTq2bhbz3hJfU1Gcr1d_e=Om24S6=2f1PW0BWn7aXwPgHw@mail.gmail.com>
Date: Thu, 20 Jun 2019 14:08:28 -0500
Message-Id: <99A71EAD-A6CA-4BEC-B7C8-1711A76C5A76@sifive.com>
References: <338f944c74c7540f71c27f30f5b46405b8440de3.camel@wdc.com>
 <c4a72786b3bee65ca2d5971e42cb22edf6cf7fce.camel@wdc.com>
 <CAAhSdy2-2tQ_ToRqBcB=q6Z5biZMvfQ9ok7hW508KjJM9fMNJQ@mail.gmail.com>
 <d66f7e401e27bcc486e6cf94eab3fd2ad9c0be30.camel@wdc.com>
 <CAEn-LTq2bhbz3hJfU1Gcr1d_e=Om24S6=2f1PW0BWn7aXwPgHw@mail.gmail.com>
To: David Abdurachmanov <david.abdurachmanov@gmail.com>
X-Mailer: Apple Mail (2.3445.9.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_120831_453765_ECCC4F80 
X-CRM114-Status: GOOD (  22.27  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>, "mafm@debian.org" <mafm@debian.org>,
 "khilman@baylibre.com" <khilman@baylibre.com>,
 "abner.chang@hpe.com" <abner.chang@hpe.com>,
 "anup@brainfault.org" <anup@brainfault.org>,
 "mark.corbin@embecosm.com" <mark.corbin@embecosm.com>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "rjones@redhat.com" <rjones@redhat.com>, "wxjstz@126.com" <wxjstz@126.com>,
 Atish Patra <Atish.Patra@wdc.com>, Anup Patel <Anup.Patel@wdc.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 "yash.shah@sifive.com" <yash.shah@sifive.com>, Jim Jacobsen <jamez@wit.com>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "merker@debian.org" <merker@debian.org>,
 "schwab@linux-m68k.org" <schwab@linux-m68k.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "hch@lst.de" <hch@lst.de>,
 "lukas.auer@aisec.fraunhofer.de" <lukas.auer@aisec.fraunhofer.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Cgo+IE9uIEp1biAyMCwgMjAxOSwgYXQgMTozOSBQTSwgRGF2aWQgQWJkdXJhY2htYW5vdiA8ZGF2
aWQuYWJkdXJhY2htYW5vdkBnbWFpbC5jb20+IHdyb3RlOgo+IAo+IE9uIFRodSwgSnVuIDIwLCAy
MDE5IGF0IDg6NTggUE0gQXRpc2ggUGF0cmEgPEF0aXNoLlBhdHJhQHdkYy5jb20+IHdyb3RlOgo+
PiAKPj4gT24gVGh1LCAyMDE5LTA2LTIwIGF0IDA4OjUwICswNTMwLCBBbnVwIFBhdGVsIHdyb3Rl
Ogo+Pj4gT24gVGh1LCBKdW4gMjAsIDIwMTkgYXQgMTozNiBBTSBBdGlzaCBQYXRyYSA8QXRpc2gu
UGF0cmFAd2RjLmNvbT4KPj4+IHdyb3RlOgo+Pj4+IE9uIFdlZCwgMjAxOS0wNi0xOSBhdCAxMzow
MiAtMDcwMCwgQXRpc2ggUGF0cmEgd3JvdGU6Cj4+Pj4+IEhpIEFsbCwKPj4+Pj4gCj4+Pj4+IFdl
IGhhdmUgYmVlbiB3YWl0aW5nIGZvciB1cHN0cmVhbSBrZXJuZWwgdG8gYm9vdCBvbiBIaUZpdmUK
Pj4+Pj4gVW5sZWFzaGVkCj4+Pj4+IGZvciBzb21lIHRpbWUuIEZpbmFsbHksIGFsbCB0aGUgcmVx
dWlyZWQgZHJpdmVycyB3aWxsIGJlCj4+Pj4+IGF2YWlsYWJsZSBpbgo+Pj4+PiA1LjMtcmMxIGFz
IFlhc2hbMV0gJiBQYXVsJ3NbMl0gcGF0Y2hlcyBhcmUgcXVldWVkIGZvciBtZXJnaW5nLgo+Pj4+
PiBZYXkhIQo+Pj4+PiAKPj4+Pj4gSG93ZXZlciwgdGhlIERUL2RyaXZlcnMgaW4ga2VybmVsIGFy
ZSBub3QgYmFja3dhcmQgY29tcGF0aWJsZQo+Pj4+PiB3aXRoCj4+Pj4+IHRoZQo+Pj4+PiBEVCBw
cm92aWRlZCBieSBGU0JMLiBUaGF0IG1lYW5zLCBldmVyeWJvZHkgbmVlZCB0byB1cGdyYWRlIHRv
IHRoZQo+Pj4+PiBuZXcKPj4+Pj4gRFQgaWYgdGhleSB3YW50IHRvIHVzZSB1cHN0cmVhbSBrZXJu
ZWwuIEhlcmUgYXJlIHNvbWUgcG9zc2libGUKPj4+Pj4gYXBwcm9hY2hlcyB0byBhbGxvdyBhIHNt
b290aCB0cmFuc2l0aW9uLgo+Pj4+PiAKPj4+Pj4gMS4gRW1iZWRkIHRoZSBEVCBpbiBPcGVuU0JJ
IGRpcmVjdGx5IGFuZCBidWlsZCBpdCBieSBkZWZhdWx0IGZvcgo+Pj4+PiB1bmxlYXNoZWQgcGxh
dGZvcm0uIChkaXNjdXNzZWQgaW4gT3BlblNCSSBtYWlsaW5nIGxpc3QgWzNdKQo+Pj4+PiAKPj4+
Pj4gUHJvczogTm8gY2hhbmdlIGluIGFueWJvZHkncyBidWlsZCBzeXN0ZW0gYXMgbG9uZyBhcyB0
aGV5IHVzZQo+Pj4+PiBsYXRlc3QKPj4+Pj4gT3BlblNCSS4KPj4+Pj4gCj4+Pj4+IENvbnM6IFRo
aXMgc2V0cyBhIGJhZCBwcmVjZWRlbnQgZm9yIGZ1dHVyZSBwbGF0Zm9ybXMgYXMgT3BlblNCSQo+
Pj4+PiBzaG91bGQKPj4+Pj4gbm90IGJlIHRoZSBwbGFjZSB0byBrZWVwL21haW50YWluIGRldmlj
ZSB0cmVzcy4KPj4+Pj4gCj4+Pj4+IEl0IHdpbGwgYWxzbyBicmVhayBub24tTGludXggT1MgdGhh
dCBoYXZlIG5vdCB1cGdyYWRlZCB0aGVpciBEVAo+Pj4+PiB0bwo+Pj4+PiBtYXRjaCB3aXRoIGtl
cm5lbC4KPj4+Pj4gCj4+Pj4+IDIuIExpbmsgdGhlIHVwZGF0ZWQgRFRCIG1haW50YWluZWQgYnkg
a2VybmVsIHVzaW5nCj4+Pj4+IEZXX1BBWUxPQURfRkRUX1BBVEgKPj4+Pj4gaW4gT3BlblNCSS4K
Pj4+Pj4gCj4+Pj4+IFByb3M6IERUIGlzIG1haW50YWluZWQgYnkga2VybmVsIGFuZCBPcGVuU0JJ
IGp1c3QgdXNlIHRoZSBhbHJlYWR5Cj4+Pj4+IGJ1aWx0Cj4+Pj4+IERUQi4KPj4+Pj4gCj4+Pj4+
IENvbnM6IENyZWF0ZXMgYSBkZXBlbmRhbmN5IG9uIExpbnV4IGJ1aWxkIHN5c3RlbS4KPj4+Pj4g
QWxsIExpbnV4IGRpc3RybyBtYWludGFpbmVycyBub3cgaGF2ZSB0byB1cGRhdGUgdGhlaXIgYnVp
bGQKPj4+Pj4gc2NyaXB0IHRvCj4+Pj4+IGFkZCB0aGF0IG9wdGlvbiBhbmQgYWxsIGRvY3VtZW50
YXRpb24gbmVlZCB0byBiZSB1cGRhdGVkLgo+Pj4+PiAKPj4+Pj4gMy4gVXBkYXRlIEZTQkw6Cj4+
Pj4+IAo+Pj4+PiBQcm9zOiBDbGVhbmVzdCBhcHByb2FjaC4KPj4+Pj4gCj4+Pj4+IENvbnM6IEV2
ZXJ5Ym9keSBoYXMgdG8gdXBncmFkZSB0aGUgRlNCTCB3aGljaCBpcyBub3QgYSBzaW1wbGUgYXNr
Cj4+Pj4+IGZvcgo+Pj4+PiBldmVyeW9uZS4gVGhlcmUgaXMgbm8gRlNCTCBiaW5hcnkgYXZhaWxh
YmxlIHB1YmxpY2x5IGFzIHdlbGwuIFNvCj4+Pj4+IGV2ZXJ5Ym9keSBoYXMgdG8gYnVpbGQgRlNC
TCBmaXJzdC4KPj4+Pj4gCj4+Pj4+IEFueSBvdGhlciBwb3NzaWJsZSBzb2x1dGlvbnM/Cj4+Pj4+
IAo+Pj4+PiBUaWxsIG5vdywgMiBzZWVtcyB0byBiZSB0aGUgcHJlZmVycmVkIGNob2ljZSBmb3Ig
bm93LiBBcHByb2FjaCAzCj4+Pj4+IGlzCj4+Pj4+IGFsc28gb2theSBmb3IgbG9uZ2VyIHRlcm0g
c29sdXRpb24gKGdpdmVuIHRoYXQgRlNCTCBiaW5hcnkgYW5kCj4+Pj4+IGluc3RydWN0aW9ucyBh
cmUgYXZhaWxhYmxlIHRpbWVseSkuIEJ1dCBhcHByb2FjaCAyIHJlcXVpcmVzIGV4dHJhCj4+Pj4+
IHdvcmsKPj4+Pj4gb24gZGlzdHJvIG1haW50YWluZXJzLiBUaGF0J3Mgd2h5IHdlIHdhbnQgdG8g
Z2V0IGFuIGFncmVlbWVudAo+Pj4+PiB3aXRoCj4+Pj4+IHRoZW0KPj4+Pj4gYmVmb3JlIHJlY29t
bW9uZGluZyBhbnkgc3BlY2lmaWMgYXBwcm9hY2ggdG8gYW55Ym9keSBpbiB0aGUKPj4+Pj4gY29t
bXVuaXR5Lgo+Pj4+PiAKPj4+Pj4gVGhvdWdodHMgPwo+Pj4+PiAKPj4+PiAKPj4+PiBBcmdoLiBJ
IG1lc3NlZCB1cCB0aGUgc3ViamVjdCBsaW5lIGZpcnN0IHRpbWUuCj4+Pj4gU29ycnkgZm9yIHRo
ZSBub2lzZS4KPj4+IAo+Pj4gSSBoYXZlIDR0aCBvcHRpb24gd2hpY2ggaXMgZXZlbiBjbGVhbmVy
IHRoYXQgM3JkIG9wdGlvbgo+Pj4gCj4+PiA0LiBVLUJvb3RfU1BML0NvcmVib290IHJlcGxhY2Ug
RlNCTAo+Pj4gVGhlIFUtQm9vdF9TUEwvQ29yZWJvb3Qgd2lsbCByZXBsYWNlIEZTQkwgYW5kIGxv
YWQgT3BlblNCSQo+Pj4gRldfRFlOQU1JQywgUGxhdGZvcm0gRFRCLCBhbmQgVS1Cb290X1NfbW9k
ZSBmcm9tIGJvb3QKPj4+IGRldmljZSAoTU1DL0ZsYXNoKS4gV2UgY2FuIHVwZGF0ZSBPcGVuU0JJ
IEZXX0RZTkFNSUMsCj4+PiBQbGF0Zm9ybSBEVEIsIG9yIFUtQm9vdF9TX21vZGUgc2VwYXJhdGVs
eSBhbnl0aW1lIHdpdGhvdXQKPj4+IHVwZGF0aW5nIG90aGVyIGltYWdlcy4KPj4+IAo+Pj4gUHJv
czogQmV0dGVyIHRoYW4gb3B0aW9uIDMKPj4+IAo+Pj4gQ29uczogTm9uZSB0aGF0IEkgY2FuIHRo
aW5rIG9mLgo+Pj4gCj4+PiBJTUhPLCBpdCdzIHJpZ2h0IHRpbWUgcmVwbGFjZSBGU0JMIHdpdGgg
VS1Cb290X1NQTC9Db3JlYm9vdAo+Pj4gb25jZSBhbmQgZm9yIGFsbC4KPj4gCj4+ICtMdWthcywg
KyBYaWFuZwo+PiAKPj4gSSBjb21wbGV0ZWx5IGFncmVlIHRoYXQgcmVwbGFjaW5nIEZTQkwgd2l0
aCBVLUJvb3QgU1BML2NvcmVib290IGlzIHRoZQo+PiBiZXN0IHBvc3NpYmxlIHNvbHV0aW9uLiBI
b3dldmVyLCB0aGUgaW1wbGVtZW50YXRpb24gb2YgZWl0aGVyIG9uZSBpcwo+PiBub3QgYXZhaWxh
YmxlIHVwc3RyZWFtLiBQbGVhc2UgY29ycmVjdCBtZSBpZiBJIGFtIHdyb25nLgo+PiAKPj4gU28g
d2UgbmVlZCBhbiBpbnRlcm1lZGlhdGUgc29sdXRpb24gdW50aWwgdGhhdCBoYXBwZW5zLiBJdCBz
ZWVtcyB0aGF0Cj4+IGFwcHJvYWNoIDIgaXMgb2theSB3aXRoIG1ham9yaXR5LiBXZSBoYXZlIG5v
dCBoZWFyZCBhbnl0aGluZyBmcm9tCj4+IEZlZG9yYS9kZWJpYW4gZm9sa3MgdGhvdWdoLgo+PiAK
PiAKPiBIZXJlIGlzIG15IG9waW5pb24gZnJvbSBGZWRvcmEgY2FtcC4KPiAKPiBUaGUgcHJlZmVy
cmVkIG9wdGlvbiB3b3VsZCBiZSBVLUJvb3QgU1BMIGZvciBhbHJlYWR5IG1lbnRpb25lZAo+IHJl
YXNvbjoKPiAiLi4uIGZvciB0aGUgcmVhc29uIG9mIHVzaW5nIHRoZSBzYW1lIGJvb3Rsb2FkZXIg
dGVjaG5vbG9neSBzdGFjay4iCj4gCj4gV2UgYWxyZWFkeSBzaGlwIFUtQm9vdCBTUEwgYmluYXJp
ZXMgZm9yIGEgaGlnaCBudW1iZXIgb2YgQUFyY2g2NAo+IGFuZCBBUk12NyBib2FyZHMuIElkZWFs
bHkgd2UgZG9uJ3Qgd2FudCB0byBkZXBlbmQgb24gZXh0ZXJuYWwgRFRCcwo+IHN0b3JlZCBpbiAv
Ym9vdCAobGlrZSBpdCdzIGRvbmUgaW4gRmVkb3JhIEFSTXY3KS4gVGhlIGRlZmF1bHQgRFRCIHNo
b3VsZAo+IGJlIGJ1aWx0IGludG8gdGhlIGZpcm13YXJlIChGU0JMLXN0eWxlKSwgYnV0IHRoZXJl
IG1pZ2h0IGJlIGFuIG9wdGlvbgo+IHRvIHBhc3MgZXh0ZXJuYWwgb25lIGZvciBkZXZlbG9wbWVu
dC9kZWJ1Z2dpbmcgcmVhc29ucyAoaS5lLiBvdmVycmlkZQo+IHRoZSBkZWZhdWx0IG9uZSBpbiBm
aXJtd2FyZSkuCj4gCj4gRm9yIG1lIGZpcm13YXJlIChpbmNsLiBEVEIpIGlzIHBhcnQgb2YgaGFy
ZHdhcmUuCj4gCj4gU2lGaXZlIFVubGVhc2hlZCBpcyBhIGRldmVsb3BtZW50IGJvYXJkIHdpdGgg
YSB0ZXN0IGNoaXAsIGFuZCBpdCBzaGlwcwo+IGluIGEgbG93IHZvbHVtZXMgdGh1cyByaWdodCBu
b3cgSSB3b3VsZCBqdXN0IHJlYnVpbGQgRlNCTCB3aXRoIG5ldyBEVEIKPiBhbmQgcHJvdmlkZSBp
bnN0cnVjdGlvbnMgaG93IHRvIGZsYXNoIGl0LgoKSeKAmXZlIGJlZW4gcnVubmluZyAoYW5kIHN1
cHBvcnRpbmcgY3VzdG9tZXJzKSB3aXRoIHRoZSBIaUZpdmVfVW5sZWFzaGVkClUtYm9vdCAoIGh0
dHBzOi8vZ2l0aHViLmNvbS9zaWZpdmUvSGlGaXZlX1UtQm9vdCkgZm9yIGF0IGxlYXN0IDYgbW9u
dGhzIG5vdywKYW5kIEkgd291bGQgbXVjaCByYXRoZXIgaGF2ZSBhbiBpbnRlcmltIHNvbHV0aW9u
IGJlIHRoYXQgd2UgcHV0IHRoZSBuZXcgCkRUQiBpbnRvIHRoYXQgY29kZWJhc2UuCgpXaGVuIHdl
IGZpbmFsbHkgZ2V0IE0tbW9kZSB1LWJvb3Qgd29ya2luZyBpbiB1cHN0cmVhbSwgdGhlbiBpdOKA
mXMgYSBtb3N0bHkKZHJvcC1pbiByZXBsYWNlbWVudCBmb3IgdGhlIG9sZCBvbmUuCgpOb3cgdGhh
dCB0aGUgRFRTIHNlZW1zIHRvIGhhdmUgc3RhYmlsaXplZCBpbiB0aGUgdXBzdHJlYW0ga2VybmVs
LCBpZiBJIGNhbgpmaWd1cmUgb3V0IHdoeSB0aGUgc2FuZGJveC9kZXZlbCBjb2RlIChiYXNlZCBv
biB1cHN0cmVhbSkgdGhhdCBJIGhhdmUgYXQKaHR0cHM6Ly9naXRodWIuY29tL3NpZml2ZS91LWJv
b3QgaXMgZ2V0dGluZyBUWCB0aW1lb3V0cywgd2UgY291bGQgcHJvYmFibHkKbW92ZSB0byB0aGF0
IHByZXR0eSBxdWlja2x5IGFzIGEgZnVsbCByZXBsYWNlbWVudCBmb3IgRlNCTCB0aGF0IGlzIGdv
aW5nCnRvIGJlIGNsb3NlIHRvIHVwc3RyZWFtIFUtYm9vdC4KCj4gCj4+IAo+Pj4gQWxzbywgcnVu
bmluZyBlbnRpcmUgVS1Cb290IGluIE0tbW9kZSBpcyBqdXN0Cj4+PiBhbiBvdmVya2lsbC4KPj4+
IAo+PiAKPj4gCj4+IAo+Pj4gUmVnYXJkcywKPj4+IEFudXAKPj4gLS0KPj4gUmVnYXJkcywKPj4g
QXRpc2gKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+IGxpbnV4LXJpc2N2IG1haWxpbmcgbGlzdAo+IGxpbnV4LXJpc2N2QGxpc3RzLmluZnJhZGVh
ZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJpc2N2CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtcmlzY3YgbWFpbGluZyBsaXN0CmxpbnV4LXJpc2N2QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yaXNjdgo=
