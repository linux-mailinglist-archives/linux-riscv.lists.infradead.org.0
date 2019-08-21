Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FFB5987EC
	for <lists+linux-riscv@lfdr.de>; Thu, 22 Aug 2019 01:33:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wSL303Q2nLEtYSPk0jmesP9TlYUblJFayS6TNtrtpOk=; b=HuCFiLzD57Lge1
	QnRNX3yyFBclr3/4Pcs+H0JAAx9d0SljvUHk1ROiU+EQg2cTNH8H+fNfEj1/8L09varJvgpxW5yVt
	jvNykchRvvrag+XQPv5jxwffh3zeWN4mlvroYZsjsU5Cb+4cYfyrRX8zY5AeiL9eXPQ4amufnY3FY
	tctXdQxDBvh/h78NhsKgfY60hXLOwhMlsuG5C0haxzBmNmus5A3rIZMbbbz3AwDA2NbtpG2wxOtkk
	yioWx7tWpAY4o2ZXceU+J91MCCXBWlpDI2YsjLpdgdZRVYgWzwXSZbAZn5B3my4CjIO6kTHoRloox
	X8XM1tp5oq5QTX2qq07w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0a6D-0004BU-30; Wed, 21 Aug 2019 23:33:05 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0a69-0004B8-45
 for linux-riscv@lists.infradead.org; Wed, 21 Aug 2019 23:33:02 +0000
Received: by mail-pl1-x641.google.com with SMTP id d3so2244273plr.1
 for <linux-riscv@lists.infradead.org>; Wed, 21 Aug 2019 16:33:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=Li3UBe8fI+pi64qmfeKTwbTPteH9HIZjUzvyj3UoeFw=;
 b=MGLD5jrwG4bvu8DWnmzQYJzFS1/EptZ8wSe5Rt8mD73XH/bMx6G8SQefQZ+UmpmiMG
 CTQgRYdud9d65PvEcTExXMizP0qA0bUbNsERbQG05wRcQMmI9kt+KPCv+d8LXuklTlCQ
 8GdNTGObeP6PNG8DMgihfBMa4URCLFOAvPzmXgmoZrYIcWwrYtYUYuwzfrmG7SEf0N+1
 LGr19VM9K0uNGpsCiGs3qBZhAXZbkSJ58M64j4gwnj3BDo1aeybhF+sW4J38W0New54k
 EkAHZqQpYZz/F5wlE1PMOrBjVBPSqbrhBNx7puf/2TZluyPMnPTwslzrP8BanY137KAx
 c/kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=Li3UBe8fI+pi64qmfeKTwbTPteH9HIZjUzvyj3UoeFw=;
 b=Tp204hDoSTXZP9beaPiE48LNblXSjMG9pmNuVkXSnfjGe+KkyFdDJWFNoknuAWouxJ
 0ucQVYPZx6IPyouWBRaa5gk2CZZzbz1DYXDfZd1JXiUryWESdlv0XfuPLmtNfk9Hyd4t
 wgox7LMxmKLhBKiNLvo1mmr1F+BQo3Ds9ZOxrxCXKT4G5n05PwsXMHxwLhWlKs46fzpe
 1nmJ/PUkyZawJyIn9cL2J99KvBWhaQfbtWqtyHpalwsqh1QW6EHLe2WJ6bDxWiGxXIW2
 jCglMoOOUSbBJGYvRORZN2IF24fetOZSWV9f1KnH3S0dEY/U8pExzsA+nZkH3x9kJsps
 8K2w==
X-Gm-Message-State: APjAAAUqz0xPOIzjiabMh9us/Q7r9dp1DjeJwVlPIX+ym6ewMe+5RADg
 wagMAe31Ipr5wskEE8GbF+0L/w==
X-Google-Smtp-Source: APXvYqxVI4mbGGV1tJ1qz87U1pU2VgtzBv1P6daTCRDMWqjsD+hGJrnHGR1YWbu9hi+D0j2JGid8uQ==
X-Received: by 2002:a17:902:24b:: with SMTP id
 69mr34895534plc.250.1566430380557; 
 Wed, 21 Aug 2019 16:33:00 -0700 (PDT)
Received: from [10.17.0.244] ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id w11sm25303530pfi.105.2019.08.21.16.32.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 21 Aug 2019 16:32:59 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Re: [PATCH 15/15] riscv: disable the EFI PECOFF header for M-mode
From: Troy Benjegerdes <troy.benjegerdes@sifive.com>
In-Reply-To: <MN2PR04MB6061794D39900E038F9FCF218DAA0@MN2PR04MB6061.namprd04.prod.outlook.com>
Date: Wed, 21 Aug 2019 16:32:58 -0700
Message-Id: <CCBE0CC0-76B2-415B-B987-0110F3CBEE70@sifive.com>
References: <20190813154747.24256-1-hch@lst.de>
 <20190813154747.24256-16-hch@lst.de>
 <3BF39A0F-558D-40E0-880D-27829486F9F0@sifive.com>
 <4f1677e24a5fcdfd2fda714cdd66f4dbe7817284.camel@wdc.com>
 <F4C28F0F-7385-432E-A766-64A3F8B8C381@sifive.com>
 <MN2PR04MB6061794D39900E038F9FCF218DAA0@MN2PR04MB6061.namprd04.prod.outlook.com>
To: Anup Patel <Anup.Patel@wdc.com>
X-Mailer: Apple Mail (2.3445.9.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_163301_196737_8678E8D9 
X-CRM114-Status: GOOD (  23.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Atish Patra <Atish.Patra@wdc.com>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "hch@lst.de" <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Cgo+IE9uIEF1ZyAyMSwgMjAxOSwgYXQgNDowMiBQTSwgQW51cCBQYXRlbCA8QW51cC5QYXRlbEB3
ZGMuY29tPiB3cm90ZToKPiAKPiAKPiAKPj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPj4g
RnJvbTogbGludXgta2VybmVsLW93bmVyQHZnZXIua2VybmVsLm9yZyA8bGludXgta2VybmVsLQo+
PiBvd25lckB2Z2VyLmtlcm5lbC5vcmc+IE9uIEJlaGFsZiBPZiBUcm95IEJlbmplZ2VyZGVzCj4+
IFNlbnQ6IFdlZG5lc2RheSwgQXVndXN0IDIxLCAyMDE5IDExOjI1IFBNCj4+IFRvOiBBdGlzaCBQ
YXRyYSA8QXRpc2guUGF0cmFAd2RjLmNvbT4KPj4gQ2M6IGhjaEBsc3QuZGU7IHBhdWwud2FsbXNs
ZXlAc2lmaXZlLmNvbTsgbGludXgtcmlzY3ZAbGlzdHMuaW5mcmFkZWFkLm9yZzsKPj4gRGFtaWVu
IExlIE1vYWwgPERhbWllbi5MZU1vYWxAd2RjLmNvbT47IGxpbnV4LQo+PiBrZXJuZWxAdmdlci5r
ZXJuZWwub3JnOyBwYWxtZXJAc2lmaXZlLmNvbQo+PiBTdWJqZWN0OiBSZTogW1BBVENIIDE1LzE1
XSByaXNjdjogZGlzYWJsZSB0aGUgRUZJIFBFQ09GRiBoZWFkZXIgZm9yIE0tbW9kZQo+PiAKPj4g
Cj4+IAo+Pj4gT24gQXVnIDIxLCAyMDE5LCBhdCAxMDozMSBBTSwgQXRpc2ggUGF0cmEgPEF0aXNo
LlBhdHJhQHdkYy5jb20+IHdyb3RlOgo+Pj4gCj4+PiBPbiBUdWUsIDIwMTktMDgtMjAgYXQgMjE6
MTQgLTA3MDAsIFRyb3kgQmVuamVnZXJkZXMgd3JvdGU6Cj4+Pj4+IE9uIEF1ZyAxMywgMjAxOSwg
YXQgODo0NyBBTSwgQ2hyaXN0b3BoIEhlbGx3aWcgPGhjaEBsc3QuZGU+IHdyb3RlOgo+Pj4+PiAK
Pj4+Pj4gTm8gcG9pbnQgaW4gYmxvYXRpbmcgdGhlIGtlcm5lbCBpbWFnZSB3aXRoIGEgYm9vdGxv
YWRlciBoZWFkZXIgaWYgd2UKPj4+Pj4gcnVuIGJhcmUgbWV0YWwuCj4+Pj4gCj4+Pj4gSSB3b3Vs
ZCBzYXkgdGhlIHNhbWUgZm9yIFMtbW9kZS4gRUZJIGJvb3Rpbmcgc2hvdWxkIGJlIGFuIG9wdGlv
biwgbm90Cj4+Pj4gYSByZXF1aXJlbWVudC4KPj4+IAo+Pj4gRUZJIGJvb3RpbmcgaXMgbmV2ZXIg
YSByZXF1aXJlbWVudCBvbiBhbnkgYm9hcmQuIFdoZW4gRUZJIHN0dWIgd2lsbCBiZQo+Pj4gYWRk
ZWQgZm9yIGtlcm5lbCwgaXQgd2lsbCBiZSBlbmFibGVkIHdpdGggQ09ORklHX0VGSV9TVFVCIG9u
bHkuCj4+PiAKPj4+IFRoZSBjdXJyZW50IGFkZGl0aW9uYWwgaGVhZGVyIGlzIG9ubHkgNjQgYnl0
ZXMgYW5kIGFsc28gcmVxdWlyZWQgZm9yCj4+PiBib290aSBpbiBVLWJvb3QuIFNvIGl0IHNob3Vs
ZG4ndCBkaXNhYmxlZCBmb3IgUy1tb2RlLgo+Pj4gCj4+PiBEaXNhYmxpbmcgaXQgZm9yIE0tTW9k
ZSBMaW51eCBpcyBva2F5IGJlY2F1c2Ugb2YgbWVtb3J5IGNvbnN0cmFpbnQgYW5kCj4+PiBNLU1v
ZGUgbGludXggd29uJ3QgdXNlIFUtYm9vdCBhbnl3YXlzLgo+Pj4gCj4+Pj4gSSBoYXZlIE0tbW9k
ZSBVLWJvb3Qgd29ya2luZyB3aXRoIGJvb3RlbGYgdG8gc3RhcnQgQkJMLCBhbmQgYXQgc29tZQo+
Pj4+IHBvaW50LCBJ4oCZbSBob3Bpbmcgd2UgY2FuIGhhdmUgYSBNLW1vZGUgbGludXgga2VybmVs
IGJlIHRoZSBTQkkKPj4+PiBwcm92aWRlciBmb3IgUy1tb2RlIGtlcm5lbHMsCj4+PiAKPj4+IFdo
eSBkbyB5b3Ugd2FudCBibG9hdCBhIE0tTW9kZSBzb2Z0d2FyZSB3aXRoIExpbnV4IGp1c3QgZm9y
IFNCSQo+Pj4gaW1wbGVtZW50YXRpb24/Cj4+PiAKPj4+IFVzaW5nIExpbnV4IGFzIGEgbGFzdCBz
dGFnZSBib290IGxvYWRlciBpLmUuIExpbnV4Qm9vdCBtYXkgbWFrZSBzZW5zZQo+Pj4gdGhvdWdo
Lgo+Pj4gCj4+IAo+PiBCb290IHRpbWUsIGFuZCBlYXNlIG9mIGRldmVsb3BtZW50LCBhbmQgc2lt
cGxpZmllZCBzeXN0ZW0gbWFuYWdlbWVudC4KPj4gCj4+IEhhdmluZyBNLW1vZGUgbGludXggYXMg
YSBzdXBlcnZpc29yL2Jvb3Qga2VybmVsIGNhbiBnZXQgdXMgdG8gcmVzcG9uZGluZyB0bwo+PiBI
VFRQUy9TU0gvZXRjIHJlcXVlc3RzIHdpdGhpbiBzZWNvbmRzIG9mIHBvd2VyLW9uLCB3aGlsZSB0
aGUg4oCYYm9vdOKAmQo+PiBrZXJuZWwgY2FuIGJlIGxvYWRpbmcgZ3Vlc3QgUy1tb2RlIGtlcm5l
bHMgZnJvbSB0aGluZ3MgbGlrZSBOVk1FIGZsYXNoCj4+IGRyaXZlcyB0aGF0IGFyZSBnb2luZyB0
byBiZSBhIGxvdCBtb3JlIGNvZGUgYW5kIGRldmVsb3BtZW50IHRvIHN1cHBvcnQgaW4gVS0KPj4g
Ym9vdCBvciBhbnkgb3RoZXIgbm9uLWxpbnV4IGRlZGljYXRlZCBib290IGxvYWRlci4KPiAKPiBJ
IGRvbid0IHNlZSB3aHkgdGhlc2UgdGhpbmdzIGNhbm5vdCBiZSBhY2hpZXZlZCBpbiBleGlzdGlu
ZyBvcGVuLXNvdXJjZQo+IGJvb3Rsb2FkZXJzLiBJbiBmYWN0LCBVLWJvb3QgYWxyZWFkeSBoYXMg
IkZhbGNvbiIgbW9kZSBmb3IgZmFzdCBib290aW5nLgo+IAo+PiAKPj4gVGhlcmXigJlzIGFsc28g
YSB2ZXJ5IHN0cm9uZyBzZWN1cml0eSBhcmd1bWVudCwgYXMgTGludXggaXMgZ29pbmcgdG8gZ2V0
IHRoZQo+PiBsYXJnZXN0IGFuZCBicm9hZGVzdCBzZWN1cml0eSByZXZpZXcsIGFuZCB3aWxsIGxp
a2VseSBnZXQgc29mdHdhcmUgdXBkYXRlcyBhCj4+IGxvdCBmYXN0ZXIgdGhhbiBkZWRpY2F0ZWQg
Ym9vdCBmaXJtd2FyZXMgd2lsbC4KPiAKPiBGb3Igc2VjdXJpdHksIHdlIGhhdmUgdG8gZ2V0IFNX
IGNlcnRpZmllZCB3aXRoIHZhcmlvdXMgc29tZXRoaW5nIGxpa2UgSVNPMjYyNgo+IHN0YW5kYXJk
LiBUaGlzIGlzIHZlcnkgY29tbW9uIHByYWN0aWNlIGluIEF1dG9tb3RpdmUgaW5kdXN0cnkuIFRv
IGFjaGlldmUgc3VjaAo+IGEgY2VydGlmaWNhdGlvbiBmb3IgYW55IFNXLCB0aGUgc2l6ZSBvZiBj
b2RlIGJhc2UgaXMgdmVyeSB2ZXJ5IGltcG9ydGFudC4KPiAKPiBEdWUgdG8gdGhpcyByZWFzb24s
IGV2ZW4gdG9kYXkgTGludXggKGFuZCBvdGhlciBiaWcgb3Blbi1zb3VyY2UgcHJvamVjdCkKPiBh
cmUgdmVyeSBkaWZmaWN1bHQgdG8gYmUgc2VjdXJpdHkgY2VydGlmaWVkLgoKVGhlcmXigJlzIHNl
Y3VyaXR5IGNlcnRpZmllZCwgYW5kIHRoZW4gdGhlcmXigJlzIHdoYXQgSSBwZXJzb25hbGx5IGNv
bnNpZGVyIHNlY3VyZS4KClRoZSBzZWNvbmQgY2F0ZWdvcnkgaXMgY29kZSB0aGF0IEkga25vdyBp
cyB3aWRlbHkgYXVkaXRlZCBieSBsb3RzIG9mIHBlb3BsZSwKYW5kIGdldHMgcXVpY2tseSB1cGRh
dGVkIHdoZW4gdGhlcmUgaXMgYSBwcm9ibGVtLiBJIGxpa2UgVS1ib290LCBhbmQgSSB0aGluawpp
dHMgYSBncmVhdCBzb2x1dGlvbiBmb3IgaW5kdXN0cnksIGl04oCZcyBqdXN0IG5vdCB0aGUgb25s
eSBzb2x1dGlvbiB0aGF0IGNvdWxkIGJlIAp1c2VkLgoKPiAKPj4gCj4+IEFub3RoZXIgcmVhc29u
IHdvdWxkIGJlIHNoYXJpbmcgdGhlIHNhbWUga2VybmVsIGJpbmFyeSAoZWxmIGZpbGUpIGZvciBi
b3RoCj4+IE0tbW9kZSwgYW5kIFMtbW9kZSwgYW5kIHVzaW5nIHRoZSBkZXZpY2UgdHJlZSBwYXNz
ZWQgdG8gZWFjaCB0byBzcGVjaWZ5Cj4+IHdoaWNoIG1vZGUgaXQgc2hvdWxkIGJlIHJ1bm5pbmcg
aXQuIFRoZXJlIGFyZSBwcm9iYWJseSBhIGJ1bmNoIG9mIGdvdGNoYXMKPj4gd2l0aCB0aGlzIGlk
ZWEsIGFuZCBldmVuIHNvIEkgc3VzcGVjdCBzb21lb25lIHdpbGwgZGVjaWRlIHRvIGdvIGFoZWFk
IGFuZAo+PiBqdXN0IGRvIGl0IGV2ZW50dWFsbHkgYmVjYXVzZSBpdCBjb3VsZCBtYWtlIHRlc3Rp
bmcsIHZhbGlkYXRpb24sIGFuZCBzZWN1cml0eQo+PiB1cGRhdGVzIGEgbG90IGVhc2llciBmcm9t
IGFuIG9wZXJhdGlvbmFsL2RlcGxveW1lbnQgcG9pbnQgb2Ygdmlldy4KPj4gCj4+IExpbnV4Ymlv
cyBjb252aW5jZWQgbWUgdGhhdCBpZiB5b3Ugd2FudCB0byBkbyBhIHJlYWxseSBsYXJnZSBjbHVz
dGVyLCB5b3UgY2FuCj4+IGJ1aWxkLCBtYW5hZ2UsIGFuZCBydW4gc3VjaCBhIHRoaW5nIHdpdGgg
ZmV3ZXIgcGVvcGxlIGFuZCBlbmdpbmVlcmluZyBjb3N0Cj4+IHRoYW4gaWYgeW91IGhhdmUgYWxs
IHRoZXNlIGV4dHJhIGxheWVycyBvZiBib290IGZpcm13YXJlIHRoYXQgcmVxdWlyZSBzb21lCj4+
IGNvbXBhbnkgdG8gaGF2ZSBmaXJtd2FyZSBlbmdpbmVlcnMgYW5kIGxvdHMgb2YgZXh0cmEgc3lz
dGVtIHRlc3Rpbmcgb24gdGhlCj4+IGZpcm13YXJlLgo+IAo+IEkgZG9uJ3QgYnkgdGhpcyBsYXN0
IGFyZ3VtZW50LiBUaGVzZSBkYXlzIGl0J3MganVzdCB2ZXJ5IGZldyBmb2xrcyBkb2luZyBmaXJt
d2FyZSwKPiBib290bG9hZGVyLCBhbmQgTGludXggcG9ydGluZyBmb3IgYW55IG5ldyBTT0MgKGFu
eSBhcmNoaXRlY3R1cmUpLiBNb3N0IG9mCj4gdGhlIHRoaW5ncyBhcmUgYWxyZWFkeSB0aGVyZSBp
biB2YXJpb3VzIG9wZW4tc291cmNlIHByb2plY3Qgc28gc2FtZSBwZXJzb24KPiBjYW4gZWFzaWx5
IGNvbnRyaWJ1dGUgdG8gdmFyaW91cyBwcm9qZWN0cy4KPiAKPiBSZWdhcmRzLAo+IEFudXAKCldo
YXQgSSBzZWUgdGhvdWdoIGlzIHdl4oCZcmUgZHVwbGljYXRpbmcgY29kZSBhbmQgd29yayBiZXR3
ZWVuIGJvb3Rsb2FkZXJzCmFuZCBrZXJuZWwsIGZvciBleGFtcGxlIHRoZSBTUEktTk9SIGNvZGUs
IGFuZCBpZiBpdCB3YXMgYWxsIGxpbnV4LCBpdCB3b3VsZCBiZQpvbmUgZHJpdmVyIG1vZGVsIHRv
IGxlYXJuL3JlbWVtYmVyL3RyYWNrLCBhbmQgb25lIHBsYWNlIHRvIGZpeCB0aGluZ3MuCgpVLWJv
b3QgaXMgZ3JlYXQgYmVjYXVzZSB5b3UgY2FuIGJvb3Qgb3RoZXIgIWxpbnV4IHRoaW5ncyAobGlr
ZSBGcmVlQlNEKSwKaG93ZXZlciBpZiBJIHdhcyBwdXJwb3NlIGJ1aWxkaW5nIGEgbGludXggY2x1
c3RlciwgSSB3b3VsZCB3YW50IHRvIGJlIHJ1bm5pbmcKbGludXggYXMgZWFybHkgYXMgcG9zc2li
bGUgc28gSSBjYW4gdXNlIGxpbnV4IHNjcmlwdGluZyBpbiBiYXNoL2dvL3B5dGhvbiBhbmQKdGFs
ayB0byB0aGUgcXVldWUvd29ya2xvYWQgbWFuYWdlciBvdmVyIGEgbmF0aXZlIGhpZ2ggcGVyZm9y
bWFuY2UgbmV0d29yawppbnN0ZWFkIG9mIHRoZSBleHRyZW1lbHkgbGltaXRlZCDigJhodXNo4oCZ
IHNoZWxsIGFuZCBoYXZpbmcgdG8gZGlzY292ZXIgd2hpY2gKdXNlciBpbWFnZSB0byBib290IHdp
dGggc29tZXRoaW5nIG9sZCBhbmQgc2xvdyBsaWtlIGRoY3AvdGZ0cC9ldGMuCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LXJpc2N2IG1haWxpbmcg
bGlzdApsaW51eC1yaXNjdkBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcmlzY3YK
